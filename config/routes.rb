Rails.application.routes.draw do
  devise_for :models
  root to: 'home#index'
  # get 'post', to: 'post_photo#show'
  # post 'post', to: 'post_photo#create'
  # get 'myphotos', to: 'my_photos#index'
  # get 'myphotos/edit', to: 'my_photos#edit'
  resources :my_photos
  resources :post_photo
  resources :model_posts

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
