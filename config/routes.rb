Rails.application.routes.draw do
  devise_for :models

  root to: 'home#index'
  get '/search', to: 'home#search'


  resources :model_posts do
    resources :likes , dependent: :destroy
    resources :comments ,module: :model_posts
  end

  resources :comments  do
    resources :comments ,module: :comments
  end
  resources :uploads


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
