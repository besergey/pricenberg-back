Rails.application.routes.draw do
  resources :categories, only: [:index]
  resources :products, only: [:show] do
    collection do
      get 'search'
    end

    member do
      get 'prices'
    end
  end
end
