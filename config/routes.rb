Rails.application.routes.draw do
	
  resources :categories do
  	resources :items, only: [:index]
  end

  resources :user_items
  
  # get 'list/index' => 'list#index'
  # post 'list/new' => 'list#new'

	root 'categories#index'

end
