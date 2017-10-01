Rails.application.routes.draw do
	
  resources :categories
  	
  resources :user_items

	root 'categories#index'

end
