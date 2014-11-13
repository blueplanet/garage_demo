Rails.application.routes.draw do
  resources :posts
  resources :users

  use_doorkeeper
end
