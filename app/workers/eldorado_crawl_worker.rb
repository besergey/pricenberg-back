class EldoradoCrawlWorker
  include Sidekiq::Worker
  
  def perform(category_id)
    data = Crawlers::Eldorado::Crawler.new.run(category_id)

    Crawlers::Eldorado::PopulateDataToDb.new(data).call
  end
end