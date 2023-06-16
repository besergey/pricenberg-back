class MvideoCrawlWorker
  include Sidekiq::Worker
  
  def perform(category)
    data = Crawlers::Mvideo::Crawler.new(category).run

    Crawlers::Mvideo::PopulateDataToDb.new(data).call
  end
end