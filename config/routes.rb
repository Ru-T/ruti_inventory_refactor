Rails.application.routes.draw do
  root 'items#home'

  get '/home', to: 'items#home'
  post '/items', to: 'items#create'
  patch '/items', to: 'items#update'

  resources :categories, only: [:create]
end
