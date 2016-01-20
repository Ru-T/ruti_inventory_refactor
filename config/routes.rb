Rails.application.routes.draw do
  root 'items#home'

  resources :items, only: [:create]
  resources :categories, only: [:create]
end
