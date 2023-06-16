class Crawlers::Mvideo::Crawler
  attr_reader :client, :data, :category

  def initialize(category)
    @client = ApiClient.new
    @category = category
    @data = {}
  end

  def run
    product_ids = get_ids_from_listings(category[:id])

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
      get_ids_from_listings(category_id, offset + MAX_PAGE_SIZE, acc.push(*current_page_ids))
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
      next if product_exists?(data[id])

      price = prices.find { |price| price['productId'] == id }
      data[id].merge!(price: price)
    end
  end

  def product_exists?(product)
    Product.join(:categories).where(categories: { name: category[:name] }).where('name LIKE ?', "%#{product['modelName']}%").any?
  end
end