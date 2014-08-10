Rails.application.routes.draw do
  resources :contacts

  resources :users

  root "application#home"
end
