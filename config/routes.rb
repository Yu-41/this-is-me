Rails.application.routes.draw do
  devise_for :users
  
  root "profiles#index"
  resources :users, only: [:edit, :update]
    # resources :profiles
  resources :users do
    get :search, on: :collection
  end
end
