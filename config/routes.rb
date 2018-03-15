Rails.application.routes.draw do
  resources :cities
  resources :stores
  resources :users
  resources :transactions
  resources :technicians
  resources :images
  resources :bycicles
  resources :components
  resources :forums
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
