class CategoryBlueprint < Blueprinter::Base
  identifier :id

  fields :name

  field :picture do |category|
    category.picture_url
  end
end
