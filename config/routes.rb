Rails.application.routes.draw do
  devise_for :users
  root to: 'top#index'

  resources :users, only: [:show, :edit, :update]
  resources :theatrecompanies, only: [:show, :new, :create, :edit, :update]
  resources :stages, only: [:show, :new, :create, :edit, :update]
end
