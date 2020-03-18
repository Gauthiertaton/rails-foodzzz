Rails.application.routes.draw do
  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end
  devise_for :users
  root to: 'pages#home'

  get 'orders/opened', to: 'pages#orders_opened'
  get 'meals/recolted', to: 'pages#meals_recolted'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :profile, only: [:show]

  resources :restaurants, only: [:index, :show]

  resources :orders, only: [:index, :show, :create]

  resource :meal, only: [] do
    patch :release
  end
end
