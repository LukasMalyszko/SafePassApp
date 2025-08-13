# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: 'secure'
  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'

  resources :entries

  root 'entries#index'
end
