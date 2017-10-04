Rails.application.routes.draw do

  get 'results/index'

  get 'items/search', to: 'items#search'
  post 'items/search_results', to: 'items#search_results'

  resources :categories, only: [:index, :show,]

  resources :user_items, only: [:index, :create, :destroy]

  resources :stores


  get "users/:id/results" => 'results#index'
  get "users/:id/results/by_items_found" => 'results#by_items_found'
  get "users/:id/results/by_price" => 'results#by_lowest_price'
  get "users/:id/results/by_distance" => 'results#by_shortest_distance'

	root 'categories#index'


  delete '/logout'  => 'sessions#destroy'

  namespace :api do

    post   '/login'   => 'sessions#create'
    get    '/verify'  => 'sessions#verify_access_token'

    resources :users, only: [:create, :show, :update, :destroy]

    resources :password_resets, only: [:create, :update]
  end


end




