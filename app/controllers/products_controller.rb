class ProductsController < ApplicationController
  def search
    @products = build_search_product_scope

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

  def prices
    @product = Product.find(params[:id])
    grouped_prices = @product.prices.group_by(&:shop).values.map { |values| values.sort_by(&:created_at) }
    last_prices = grouped_prices.map { |prices| prices.last }
    render json: PriceBlueprint.render(last_prices, root: :items, meta: { total: last_prices.count })
  end

  private

  def build_search_product_scope
    scope = Product.includes(:prices)

    if params[:category]
      scope = scope.by_category(params[:category])
    end

    if params[:price_from] || params[:price_to]
      scope = scope.by_price(params[:price_from], params[:price_to])
    end

    if params[:query]
      scope = scope.search(params[:query])
    end

    if params[:order_by] && params[:sort_direction] && params[:category_name]
      category_name = params[:category_name].underscore
      order_by = params[:order_by]
      sort_direction = params[:sort_direction]

      scope = scope.joins(category_name.to_sym).order("#{category_name.pluralize}.#{order_by} #{sort_direction}")
    end

    if params[:freq_from] || params[:freq_to]
      scope = scope.by_freq(freq_from, freq_to)
    end

    if params[:min_freq_from] || params[:min_freq_to]
      scope = scope.by_min_freq(min_freq_from, min_freq_to)
    end

    if params[:core_count_from] || params[:core_count_to]
      scope = scope.by_core_count(core_count_from, core_count_to)
    end

    if params[:memory_type]
      scope = scope.by_memory_type(memory_type)
    end

    if params[:capacity_from] || params[:capacity_to]
      scope = scope.by_capacity(params[:capacity_from], params[:capacity_to])
    end

    scope.paginate(page: search_params[:page] || 0, per_page: search_params[:per_page] || 20)
  end

  def description_from_category
    category = Category.find(params[:category])

    
  end

  def search_params
    params.permit(:category, :query, :page, :per_page).with_defaults(category: nil, query: '', page: 1, per_page: 10)
  end

  def prices_params
    params.permit(:page, :per_page).with_defaults(page: 1, per_page: 10)
  end
end
