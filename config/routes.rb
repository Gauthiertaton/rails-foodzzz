Rails.application.routes.draw do

  # setup sidekiq > background jobs
  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end

  devise_for :users # setup device > Login module
  root to: 'pages#home' # Home page

  get 'meals/recolted', to: 'pages#meals_recolted' # waiting page after free a meal
  get 'orders/opened', to: 'pages#orders_opened' # information page order opened

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :profile, only: [:show]

  resources :restaurants, only: [:index, :show]

  resources :orders, only: [:index, :show, :create]

  resource :meal, only: [] do
    patch :release
  end

  namespace :admin do
    resources :menus, only: [:index, :new, :create, :edit, :update] # => /admin/menus
    resources :users, only: [:index, :new, :create, :edit, :update]
  end
end
