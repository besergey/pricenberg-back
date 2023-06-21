class Crawlers::Eldorado::Crawler
  URL = "https://eldorado.ru".freeze
  NOT_IN_STOCK_TEXT = "Нет в наличии".freeze
  CONFIRM_LOCATION_TEXT="Да, верно".freeze

  TYPE_HASH = {
    "Videocard" => "Видеокарта",
    "SolidDrive" => "SSD",
    "HardDrive" => "Жесткий диск",
    "Processor" => "Процессор",
    "MemoryKit" => "Оперативная память"
  }
  
  def run(product_id)
    db_product = Product.find(product_id)
    query = build_query(db_product)

    driver = Selenium::WebDriver.for :chrome, options: build_driver_options

    # type query in search input and go to results
    driver.get(URL)
    sleep(10)

    begin
      location_confirm = driver.find_element(:xpath, "//button[text()[contains(.,'#{CONFIRM_LOCATION_TEXT}')]]")
      location_confirm.click
    rescue
      puts "CONFIRM LOCATION BUTTON NOT FOUND FOR #{db_product.name} !!!"
      nil
    end

    search_form = driver.find_element(:xpath, "//form[@role='search']")
    search_form.find_element(:xpath, "//input[@name='search']").click

    new_search_form = driver.find_element(:xpath, "//form[@role='search']")
    new_search_form.find_element(:xpath, "//input[@name='search']").send_keys(query)
    
    sleep(1)

    search_submit_button = new_search_form.find_element(:xpath, "//button[@type='submit']")
    search_submit_button.click

    # get listings

    sleep(5)
    listing_container = driver.find_element(:xpath, "//div[@id='listing-container']")
    products_container = listing_container.find_element(tag_name: "ul")
    products = products_container.find_elements(tag_name: 'li')

    filtered_products = products.filter do |p| 
      p.find_element(:xpath, "//*[text()[contains(.,'#{NOT_IN_STOCK_TEXT}')]]").nil?
    rescue Selenium::WebDriver::Error::NoSuchElementError
      true
    end

    if filtered_products.size == 0
      puts "Nothing found for #{db_product.name}"
      return
    end

    product = filtered_products.first
    product_link_element = product.find_element(:xpath, "//a[@data-dy='title']")
    
    product_link = product_link_element['href']
    return if !product_link_element.text.match?(build_name_regexp(db_product))
    
    product_price_span = product.find_element(:xpath, "//span[@data-pc='offer_price']")
    product_price = product_price_span.text[0..-2].gsub(/\s+/, "").to_f

    if db_product.prices.where(
      shop: Price.shops[:eldorado],
      created_at: DateTime.now.beginning_of_day..DateTime.now.end_of_day
    ).any?
      puts "Price for #{db_product.name} already exists"
      return
    end

    puts "Found price for #{db_product.name}: #{product_price}, #{product_link}"
    Price.create(
      shop: Price.shops[:eldorado],
      product: db_product,
      price: product_price,
      link: product_link
    )
  rescue => e
    puts "!!! ERROR IN CRAWLER !!!", e.message
    puts "BACKTRACE", e.backtrace
  ensure
    driver.close
  end

  private

  def build_driver_options
    user_agent = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.50 Safari/537.36'
    options = Selenium::WebDriver::Options.chrome
    options.add_argument('--headless')
    options.add_argument("user-agent=#{user_agent}")
    options.add_argument('--disable-blink-features=AutomationControlled')
    options.add_argument("--disable-extensions")
    options.options["useAutomationExtension"] = false
    options.options["exclude_switches"] = ["enable-automation"]
    options
  end

  def build_query(product)
    "#{TYPE_HASH[product.description_type]} #{product.name}"
  end

  def build_name_regexp(product)
    Regexp.new(["(.*)",build_query(product).split(" ").join("(.*)"),"(.*)"].join)
  end
end