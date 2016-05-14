Rails.application.routes.draw do

 devise_for :users
 
 resources :leagues do
 resources :players
 end
 authenticated :user do
    root 'leagues#index', as: :authenticated_root
 end
 
 root to: 'visitors#index'

 resources :users
  
end
