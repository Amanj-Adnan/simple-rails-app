Rails.application.routes.draw do
  devise_for :models

  root to: 'home#index'

  resources :model_posts do
    resources :likes , dependent: :destroy
  end
  resources :uploads

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
