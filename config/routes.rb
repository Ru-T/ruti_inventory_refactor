Rails.application.routes.draw do
  root 'items#home'
  
  resources :items, only: [:create, :update]
  resources :categories, only: [:create]
end
