Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
    # restaurants/route
    collection do
      get '/top', to: "restaurants#top"
    end
    #restaurants/:id/route
    member do
      get '/chef', to: "restaurants#chef"
    end
    # nested route for reviews
    resources :reviews, only: [:new, :create, :show]
  end

  # resources :reviews, only: [:show]



  root to: "restaurants#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
