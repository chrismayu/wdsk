Rails.application.routes.draw do
  resources :players
  resources :leagues
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
