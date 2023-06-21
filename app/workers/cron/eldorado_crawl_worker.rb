class Cron::EldoradoCrawlWorker
  include Sidekiq::Worker

  def perform
    Product.product_description_types.each do |type|
      Eldorado::CrawlWorker.perform_async(type)
      sleep(600)
    end
  end
end