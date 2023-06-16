class ProductBlueprint < Blueprinter::Base
  identifier :id

  fields :name, :category_id

  association :description, blueprint: ->(description) { description.blueprint }, default: {}

  field :price do |product|
    prices = product.prices
    grouped_prices = prices.group_by(&:shop).values.map { |values| values.sort_by(&:created_at) }
    last_prices = grouped_prices.map { |prices| prices.last }
    min_price = last_prices.min_by { |price| price.price }
    min_price.price
  end
end
