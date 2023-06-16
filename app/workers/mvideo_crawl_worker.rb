class MvideoCrawlWorker
  include Sidekiq::Worker
  
  def perform(category_id)
    data = Crawlers::Mvideo::Crawler.new.run(category_id)

    Crawlers::Mvideo::PopulateDataToDb.new(data).call
  end
end