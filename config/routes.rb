Rails.application.routes.draw do
  # get 'posts/index'
  resources :posts
  devise_for :users
  root "home#index"
end
