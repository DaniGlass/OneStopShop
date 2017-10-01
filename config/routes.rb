Rails.application.routes.draw do

  resources :categories

  resources :user_items

  resources :stores

  devise_for :users
  resources :users, only: [:show]

	root 'categories#index'

end
