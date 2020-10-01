Rails.application.routes.draw do
  get 'home/index'
  resources :posts
  resources :users, :except => [:index]
  resources :sessions
  root 'home#index'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
