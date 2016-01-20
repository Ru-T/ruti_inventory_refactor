Rails.application.routes.draw do
  root 'items#home'

  get '/home', to: 'items#home'
  resources :items, only: [:create, :update]
  resources :categories, only: [:create]
end
