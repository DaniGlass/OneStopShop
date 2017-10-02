Rails.application.routes.draw do

  get 'results/index'

  resources :categories, only: [:index, :show,]

  resources :user_items, only: [:index, :create, :destroy]

  resources :stores

  devise_for :users
  resources :users, only: [:show]

  get "users/:id/results" => 'results#index'

	root 'categories#index'

end
