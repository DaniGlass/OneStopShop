Rails.application.routes.draw do

  get 'results/index'

  resources :categories, only: [:index, :show,]

  resources :user_items, only: [:index, :create, :destroy]

  resources :stores

  devise_for :users
  resources :users, only: [:show]

  get "users/:id/results" => 'results#index'
  get "users/:id/results/by_items_found" => 'results#by_items_found'
  get "users/:id/results/by_price" => 'results#by_lowest_price'
  get "users/:id/results/by_distance" => 'results#by_shortest_distance'

	root 'categories#index'

end
