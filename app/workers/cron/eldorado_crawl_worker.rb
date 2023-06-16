class Cron::EldoradoCrawlWorker
  include 'sidekiq-worker'

  def perform
    Crawlers::Eldorado::CATEGORIES.each do |_, category|
      Eldorado::CrawlWorker.perform_async(category)
    end
  end
end