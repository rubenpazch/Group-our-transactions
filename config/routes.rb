# frozen_string_literal: true

Rails.application.routes.draw do
  
  root 'application#home'

  # group
  resources :groups, only: [:index, :show, :new, :edit, :create, :update]  

  # wishlist
  resources :wishlists, only: [:index, :show, :new, :edit, :create, :update]
  get     '/external_wishlists',  to: 'wishlists#list_external'
  get     '/group_wishlists',  to: 'wishlists#group_wishlists'
  get     '/list_order_ancient',  to: 'wishlists#list_order_ancient'
  get     '/checkout',  to: 'wishlists#checkout'
  get     '/external_wishlists',  to: 'wishlists#list_external'

  # users
  get     '/signup',  to: 'users#new'
  post    '/signup',  to: 'users#create'
  resources :users, only: [ :show, :new, :create]  
   
  # session routes
  get     '/login',   to: 'sessions#signin'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'

  # payments
  resources :payments, only: [ :create] 
end
