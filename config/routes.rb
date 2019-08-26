Rails.application.routes.draw do
  resources :users
  resources :things
  resources :favorite_things
  resources :comments
  resources :locations
end
