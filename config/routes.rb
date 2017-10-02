Rails.application.routes.draw do

  resources :categories, only: [:index, :show,]

  resources :user_items, only: [:create, :show, :destroy]

  resources :stores

  devise_for :users
  resources :users, only: [:show]

	root 'categories#index'

end
