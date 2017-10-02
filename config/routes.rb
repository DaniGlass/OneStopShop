Rails.application.routes.draw do

  resources :categories

  resources :user_items

  resources :stores

  resources :users, only: [:new, :create, :show, :delete]

  post 'authenticate', to: 'authentication#authenticate'

	root 'categories#index'

end
