Rails.application.routes.draw do
  devise_for :users
  root to: 'top#index'

  resources :users, only: [:show, :edit, :update]
  resources :theatrecompanies, only: [:show, :new, :create, :edit, :update]
  resources :stages, only: [:show, :new, :create, :edit, :update] do
    resources :reviews, only: [:new, :create]
  end
  post 'follow/:id', to: 'relationships#follow', as: 'follow'
  post 'unfollow/:id', to: 'relationships#unfollow', as: 'unfollow'
  resources :likereviews, only: [:create, :destroy]
end
