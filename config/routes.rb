# frozen_string_literal: true


Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json } 
  get 'reservations/index'
  get 'reservations/show'
  get 'reservations/create'
  get 'vehicles/index'
  get 'vehicles/show'
  get 'vehicles/create'
  get 'vehicles/destroy'
  get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
