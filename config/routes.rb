Rails.application.routes.draw do
  resources :products, only: [:new,:create,:index] do
  	member do 
  		get 'new'
  		get 'category_products'
  	end
  end

  resources :categories
  root "categories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
