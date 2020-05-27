Rails.application.routes.draw do
  get 'theatrecompanies/new'
  devise_for :users
  root to: 'top#index'

  resources :users, only: [:show, :edit, :update]
  resources :theatrecompanies, only: [:new]
end
