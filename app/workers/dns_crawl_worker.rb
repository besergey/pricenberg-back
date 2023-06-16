class DnsCrawlWorker
  include Sidekiq::Worker
  
  def perform(category_id)
    data = Crawlers::Dns::Crawler.new.run(category_id)

    Crawlers::Dns::PopulateDataToDb.new(data).call
  end
end