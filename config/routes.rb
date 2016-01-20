Rails.application.routes.draw do
  root 'items#home'

  resources :items, only: [:create, :home]
  resources :categories, only: [:create, :update]
end
