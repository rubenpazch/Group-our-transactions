# frozen_string_literal: true

Rails.application.routes.draw do

  root 'application#home'
  
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

   # users
   get     '/signup',  to: 'users#new'
   post    '/signup',  to: 'users#create'
   resources :users
   
   # session routes
   get     '/login',   to: 'sessions#new'
   post    '/login',   to: 'sessions#create'
   delete  '/logout',  to: 'sessions#destroy'
end
