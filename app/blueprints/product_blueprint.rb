class ProductBlueprint < Blueprinter::Base
  identifier :id

  fields :name, :category_id

  field :description do |product|
    blueprint = "#{product.description_type}Blueprint".constantize

    association :description, blueprint: blueprint
  end
end
