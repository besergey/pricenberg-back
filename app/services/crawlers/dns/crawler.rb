class Crawlers::Dns::Crawler
  attr_reader :client, :data

  def initialize
    @client = ApiClient.new
    @data = {}
  end

  def run(category_id)
    product_ids = get_ids_from_listings(category_id)

    get_info_for_ids(product_ids)
    get_prices_for_ids(product_ids)
    
    data
  end

  private

  def get_ids_from_listings(category_id, offset = 0, acc = [])
    response = client.get_listing_for_category(category_id)

    page_size = response.dig('body', 'total')
    current_page_ids = response.dig('body', 'products')

    if page_size && page_size <= client::MAX_PAGE_SIZE
      acc.push(*current_page_ids)
    else
      sleep(1) # to prevent a DDOS
      get_ids_from_listings(category_id, offset + 1, acc.push(*current_page_ids))
    end
  end

  def get_info_for_ids(ids)
    response = client.get_info(ids)

    products = response.dig('body', 'products')

    ids.each do |id|
      product = products.find { |product| product['productId'] == id }
      data[id] = product
    end
  end

  def get_prices_for_ids(ids)
    response = client.get_prices(ids)

    prices = response.dig('body', 'materialPrices')

    ids.each do |id|
      price = prices.find { |price| price['productId'] == id }
      data[id].merge!(price: price)
    end
  end
end