Rails.application.routes.draw do
  devise_for :users
  root 'user#index'
  root 'menus#index'
  root 'posts#index'
  # root 'searches#index'
  root 'tweets#index'
  namespace :tweets do
    resources :searches, only: :index
  end
  root 'groups#index'
  root 'messages#index'
  root 'user#index'

#   devise_for :users, :controllers => {
#  :registrations => 'users/registrations'
# }

# devise_scope :user do 
#  post 'users/sign_up/confirm' => 'users/registrations#confirm'
#  post 'users/sign_up/complete' => 'users/registrations#complete' 
# end

  # devise_for :models
  # sessions: 'users/sessions',
  # registrations: 'users/registrations'

  resources :users, only: [:index, :show, :edit, :update]
  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  # resources :searches, expect: [:index]
  resources :tweets, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :groups, only: [:index, :new, :create, :edit, :update] do
  resources :messages, only: [:index, :create]  
  end

  namespace :api do
    resources :messages, only: :index, defaults: { format: 'json' }
    end
  end