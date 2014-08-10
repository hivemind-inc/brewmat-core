Rails.application.routes.draw do
  resources :products

  resources :contacts

  resources :users

  root "application#home"
end
