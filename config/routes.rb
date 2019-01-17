Rails.application.routes.draw do
  devise_for :users
  get 'persons/profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "ads#index", as: "home"

  get 'persons/profile', as: 'user_root'

  resources :ads do
    resources :comments
  end
end
