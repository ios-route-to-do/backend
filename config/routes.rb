Rails.application.routes.draw do
  scope format: false do
    resources :users, only: [:show] do
      collection do
        post 'login'
        post 'register'
      end

      member do
        get 'favorites'
        get 'outings'
        get 'routes'
      end
    end

    resources :categories, only: [:index]

    resources :images, only: [:show, :create]

    resources :routes, only: [:show, :create] do
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
