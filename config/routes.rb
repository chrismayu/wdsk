Rails.application.routes.draw do

 devise_for :users
 
 resources :leagues do
 resources :players
 end
 root to: 'visitors#index'

 resources :users
  
end
