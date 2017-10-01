Rails.application.routes.draw do
	
  resources :categories
  	
  resources :user_items

  resources :stores

	root 'categories#index'

end
