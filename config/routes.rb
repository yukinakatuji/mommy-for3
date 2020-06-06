Rails.application.routes.draw do
  # devise_for :users
  # sessions: 'users/sessions',
  # registrations: 'users/registrations'
  root to: 'menus#index'
  # root to: 'mypage#index'

  # resources :users, only: [:index, :edit, :update]
  # resources :mypage, only: [:index, :show, :new, :create, :edit, :update] 
  # resources :relationships, only: [:create, :destroy]

end