Rails.application.routes.draw do
  resources :items_mods_joins
  resources :mods
  resources :menuitems
  resources :categories
  resources :tables
  resources :tables_items_joins
  get 'sessions/new'
  resources :waiters

  match "/signout" => "sessions#destroy", via: [:get,:post]
  match "/signin" => "sessions#new", via: [:get,:post]
  match "/login" => "sessions#create", via: [:get,:post]

  root to: 'waiters#index'
end
