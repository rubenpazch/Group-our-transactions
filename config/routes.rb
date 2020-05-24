# frozen_string_literal: true

Rails.application.routes.draw do

  resources :groups  
  root 'application#home'
  
  resources :users
  get     '/external_wishlists',  to: 'wishlists#list_external'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # wishlist
  resources :wishlists, only: [:index, :show, :new, :edit, :create, :update]
  get     '/external_wishlists',  to: 'wishlists#list_external'
  get     '/group_wishlists',  to: 'wishlists#group_wishlists'
  get     '/list_order_ancient',  to: 'wishlists#list_order_ancient'
  get     '/checkout',  to: 'wishlists#checkout'

  # users
  get     '/signup',  to: 'users#new'
  post    '/signup',  to: 'users#create'
  resources :users
  resources :payments
   
  # session routes
  get     '/login',   to: 'sessions#signin'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'
end
