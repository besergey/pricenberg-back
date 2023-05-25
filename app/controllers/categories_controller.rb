class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: CategoryBlueprint.render(@categories, root: :categories)
  end
end
