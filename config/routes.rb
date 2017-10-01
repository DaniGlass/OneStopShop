Rails.application.routes.draw do

  resources :categories do
  	resources :items, only: [:index]
  end

  resources :user_items

  devise_for :users
  resources :users, only: [:show]


	root 'categories#index'

end
