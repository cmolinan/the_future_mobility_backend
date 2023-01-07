# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json } 

  namespace :api do
    namespace :v1 do
      resources :vehicles, only: [:index, :create, :show, :destroy]
      resources :users, only: %i[index] do
        resources :reservations, only: [:index, :show, :create, :destroy]
      end

      post 'users/login' => 'users#login'
      post 'users/signup' => 'users#signup'
    end
  end
end
