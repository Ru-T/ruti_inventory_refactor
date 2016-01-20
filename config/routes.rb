Rails.application.routes.draw do
  root 'items#index'

  resources :items, only: [:create, :update, :index]
  resources :categories, only: [:create]
end
