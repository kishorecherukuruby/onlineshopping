Rails.application.routes.draw do
  resources :products, only: [:new,:create]

  resources :categories
  root "categories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
