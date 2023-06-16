require 'sidekiq'
require 'sidekiq/web'
require 'sidekiq/cron/web'

schedule_file = 'config/schedule.yml'
rails_root = Rails.root || File.dirname(__FILE__) + '/../..'
redis_config = YAML.load(ERB.new(File.read(rails_root.to_s + '/config/redis.yml')).result)
redis_config.merge! redis_config.fetch(Rails.env, {})
redis_config.symbolize_keys!

Sidekiq.configure_client do |config|
  # redis
  config.redis = {
    url: "redis://#{redis_config[:host]}:#{redis_config[:port]}/#{redis_config[:db]}"
  }
end

Sidekiq.configure_server do |config|
  # redis
  config.redis = { url: "redis://#{redis_config[:host]}:#{redis_config[:port]}/#{redis_config[:db]}" }

  if File.exist?(schedule_file) && Sidekiq.server?
    Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
  end
end

Sidekiq.options[:poll_interval] = 10

Sidekiq::Extensions.enable_delay!

Sidekiq::Web.use(Rack::Auth::Basic) do |user, password|
  [user, password] == [ENV['SIDEKIQ_USERNAME'], ENV['SIDEKIQ_PASSWORD']]
end
