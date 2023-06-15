class ProductsController < ApplicationController
  def search
    @products = Product.by_category(search_params[:category]).paginate(page: search_params[:page],
                                                                       per_page: search_params[:per_page])
    render json: ProductBlueprint.render(@products, root: :products)
  end

  private

  def search_params
    params.permit(:category, :page, :per_page).with_defaults(page: 1, per_page: 10)
  end
end
