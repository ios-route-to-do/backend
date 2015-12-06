Rails.application.routes.draw do
  scope format: false do
    resources :users, only: [] do
      collection { post 'login' }
      collection { post 'create' }
      get 'favorites'
      get 'outings'
      get 'own_routes'
    end

    resources :categories, only: [:index]

    # upload image ala cdn

    resources :routes, only: [:create] do
      get 'trending', on: :collection
      get 'new', on: :collection

      post 'rate', on: :member
      post 'finish', on: :member
      post 'favorite', to: 'routes#favorite', on: :member
      post 'unfavorite', to: 'routes#unfavorite', on: :member
    end

    resources :images, only: [:show, :create]
  end
end
