class Cron::MvideoCrawlWorker
  include 'sidekiq-worker'

  def perform
    Crawlers::Mvideo::CATEGORIES.each do |_, category|
      Mvideo::CrawlWorker.perform_async(category)
    end
  end
end