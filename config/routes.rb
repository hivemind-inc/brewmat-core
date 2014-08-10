Rails.application.routes.draw do
  root "application#home"

  resources :orders
  resources :products
  resources :contacts
  resources :users
end
