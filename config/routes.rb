Rails.application.routes.draw do
  resources :users
  resources :transactions
  resources :technicians
  resources :stores
  resources :images
  resources :forums
  resources :components
  resources :comments
  resources :cities
  resources :bicycles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
