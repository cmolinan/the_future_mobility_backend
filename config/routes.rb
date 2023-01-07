# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json } 

  resources :vehicles
  resources :users, only: %i[index] do
    resources :reservations, only: %i[index show create]
  end

  post 'users/login' => 'users#login'
  post 'users/signup' => 'users#signup'

end
