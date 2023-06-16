class Cron::DnsCrawlWorker
  include 'sidekiq-worker'

  def perform
    Crawlers::Dns::CATEGORIES.each do |_, category|
      Dns::CrawlWorker.perform_async(category)
    end
  end
end