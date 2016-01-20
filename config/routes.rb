Rails.application.routes.draw do
  root 'items#home'

  resources :items, only: [:create, :update, :home]
  resources :categories, only: [:create]
end
