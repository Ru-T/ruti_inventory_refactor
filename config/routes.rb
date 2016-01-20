Rails.application.routes.draw do
  root 'items#home'

  resources :items, only: [:create, :update] do  
    collection do
      get :home
    end
  end
  resources :categories, only: [:create]
end
