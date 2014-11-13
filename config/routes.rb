Rails.application.routes.draw do
  resources :posts
  resources :users

  namespace :api do
    namespace :v1 do
      resources :users, only: %i(index)
      resources :posts, only: %i(index)
    end
  end

  use_doorkeeper
end
