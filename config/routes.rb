Rails.application.routes.draw do

  resources :categories do
  	resources :items, only: [:index]
  end

  resources :user_items

  resources :users, only: [:show]


	root 'categories#index'

end
