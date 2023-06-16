class Crawlers::Eldorado::ApiClient
  GET_LISTINGS_URL = 'https://www.mvideo.ru/bff/products/listing'.freeze
  GET_INFO_URL = 'https://www.mvideo.ru/bff/product-details/list'.freeze
  GET_PRICES_URL = 'https://www.mvideo.ru/bff/products/prices'.freeze
  MAX_PAGE_SIZE = 24

  def get_listing_for_category(category_id, offset = 0)
    params = {
      :categoryId => category_id
      :offset => offset,
      :limit => MAX_PAGE_SIZE,
      :filterParams => 'WyJ0b2xrby12LW5hbGljaGlpIiwiLTEyIiwiZGEiXQ=='
    }

    uri = URI(GET_LISTINGS_URL)
    uri.query = URI.encode_www_form(params)

    req = Net::HTTP::Get.new(uri)

    set_headers(req)

    req_options = {
      use_ssl: uri.scheme == 'https'
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(req)
    end

    parse_body(response)
  rescue => e
    { error: e.message, code: 500 }
  end

  def get_info(ids)
    uri = URI(GET_INFO_URL)
    req = Net::HTTP::Post.new(uri)
    req.content_type = 'application/json'
    set_headers(req)

    req.body = {
      'productIds' => ids,
      'mediaTypes' => ['images'],
      'category' => true,
      'status' => true,
      'brand' => true,
      'propertyTypes' => ['KEY'],
      'propertiesConfig' => {
        'propertiesPortionSize' => 5
      },
      'multioffer' => false
    }.to_json

    req_options = {
      use_ssl: uri.scheme == 'https'
    }
    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(req)
    end

    parse_body(response)
  rescue => e
    { error: e.message, code: 500 }
  end

  def get_prices(ids)
    uri = URI(GET_PRICES_URL)
    params = {
      :productIds => ids.join(','),
      :addBonusRubles => 'true',
      :isPromoApplied => 'true',
    }
    uri.query = URI.encode_www_form(params)

    req = Net::HTTP::Get.new(uri)
    set_headers(req)

    req_options = {
      use_ssl: uri.scheme == 'https'
    }
    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(req)
    end

    parse_body(response)
  end

  private

  def set_headers(req)
    Crawlers::Mvideo::REQUEST_HEADERS.each do |k,v|
      req[k] = v
    end

    req['user-agent'] = Crawlers::USER_AGENTS.sample
  end

  def parse_body(response)
    JSON.parse(response.body)
  rescue => e
    {}
  end
end

