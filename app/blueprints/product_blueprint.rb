class ProductBlueprint < Blueprinter::Base
  identifier :id

  fields :name, :category_id

  association :description, blueprint: ->(description) { description.blueprint }, default: {}

  field :price do |product|
    product.prices.minimum(:price)
  end
end
