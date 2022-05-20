Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :movies, only: [:new, :index, :create, :update]
    resources :bookmarks, only: [:new, :index, :create, :update]
  end
  # Defines the root path route ("/")
  root to: "lists#index"
  # root "articles#index"
end
