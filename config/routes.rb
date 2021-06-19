Rails.application.routes.draw do
  devise_for :models
  root to: 'home#index'
  get 'post', to: 'post_photo#show'
  post 'post', to: 'post_photo#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
