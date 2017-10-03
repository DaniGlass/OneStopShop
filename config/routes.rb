Rails.application.routes.draw do

  get 'results/index'

  get 'items/search', to: 'items#search'
  post 'items/search_results', to: 'items#search_results'

  resources :categories, only: [:index, :show,]

  resources :user_items, only: [:index, :create, :destroy]

  resources :stores

  devise_for :users
  resources :users, only: [:show]

  get "users/:id/results" => 'results#index'

	root 'categories#index'

end
