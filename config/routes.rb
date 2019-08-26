Rails.application.routes.draw do
  resources :things
  resources :comments
  resources :locations
end
