Rails.application.routes.draw do
  devise_for :users
  get 'persons/profile'

  root to: "ads#index", as: "home"

  get 'persons/profile', as: 'user_root'

    resources :ads do
      resources :comments
    end
  end
