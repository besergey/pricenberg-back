# frozen_string_literal: true

processors = JSON.parse(File.read("db/seed_data/processors.json"), symbolize_names: true)
videocards = JSON.parse(File.read("db/seed_data/videocards.json"), symbolize_names: true)
solid_drives = JSON.parse(File.read("db/seed_data/solid_drives.json"), symbolize_names: true)
hard_drives = JSON.parse(File.read("db/seed_data/hard_drives.json"), symbolize_names: true)
memory_kits = JSON.parse(File.read("db/seed_data/memory_kits.json"), symbolize_names: true)

categories = [
  {
    name: 'Процессоры',
    picture_filename: 'processor',
    items: processors,
    description_model: Processor
  },
  {
    name: 'Видеокарты',
    picture_filename: 'videocard',
    items: videocards,
    description_model: Videocard
  },
  {
    name: 'Твердотельные накопители',
    picture_filename: 'solid_drive',
    items: solid_drives,
    description_model: SolidDrive
  },
  {
    name: 'Жесткие диски',
    picture_filename: 'hard_drive',
    items: hard_drives,
    description_model: HardDrive
  },
  {
    name: 'Оперативная память',
    picture_filename: 'memory_kit',
    items: memory_kits,
    description_model: MemoryKit
  }
]

categories.each do |category_data|
  category = Category.new(name: category_data[:name])
  category_picture = File.open("db/seed_data/categories_images/#{category_data[:picture_filename]}.jpg")
  category.picture = category_picture
  category.save!
  category_picture.close

  category_data[:items].each do |item|
    product_description_model = category_data[:description_model]
    product_description = product_description_model.create(item.except(:name))
    Product.create(name: item[:name], category: category, description: product_description)
  end
end

Processor.all.includes(:product).each do |processor|
  current_time = Time.now
  10.times do |day_offset|
    Price.shops.keys.map(&:to_sym).each do |shop|
      Price.create(
        product_id: processor.product.id,
        shop: shop,
        price: (1000 + rand(1000)) * 10,
        link: 'https://www.dns-shop.ru/product/1792bdac5c7bed20/processor-amd-pro-a6-8570-oem/',
        created_at: current_time - (10 - day_offset),
        updated_at: current_time - (10 - day_offset)
      )
    end
  end
end
