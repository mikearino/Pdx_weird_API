Rails.application.routes.draw do
  resources :user
  resources :things
  resources :comments
  resources :locations
end
