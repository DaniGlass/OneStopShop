Rails.application.routes.draw do
<<<<<<< HEAD
	
  resources :categories
  	
  resources :user_items

  resources :stores
=======

  resources :categories do
  	resources :items, only: [:index]
  end

  resources :user_items

  devise_for :users
  resources :users, only: [:show]

>>>>>>> 619968598445b3cbc70f6df09a0b68d6f1eea222

	root 'categories#index'

end
