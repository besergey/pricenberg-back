class EldoradoCrawlWorker
  include Sidekiq::Worker
  
  def perform(type)
    products = Product.where(description_type: type)

    products.each do |product|
      Crawlers::Eldorado::Crawler.new.run(product.id)
      sleep(60)
    rescue => e
      puts "!!! ERROR IN EldoradoCrawlWorker!!!", e.message
      puts "BACKTRACE", e.backtrace
    end
  end
end