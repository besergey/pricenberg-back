class ProductsController < ApplicationController
  def search
    @products = Product
      .by_category(search_params[:category])
      .search(search_params[:query])
      .paginate(page: search_params[:page], per_page: search_params[:per_page])

    render json: ProductBlueprint.render(
      @products,
      root: :items,
      meta: {
        total: @products.count,
        fields: search_params[:category] ? (
            @products&.first&.description_type&.constantize&.column_names || []
          ) - %w[id created_at updated_at additional_properties]
          : []
      }
    )
  end

  def show
    @product = Product.find(params[:id])
    render json: ProductBlueprint.render(@product)
  end

  private

  def search_params
    params.permit(:category, :query, :page, :per_page).with_defaults(category: nil, query: '', page: 1, per_page: 10)
  end
end
