Rails.application.routes.draw do
  devise_for :users
  root 'menus#index'
  root 'posts#index'
  root 'groups#index'
  root 'messages#index'
  root 'tweets#index'
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
  resources :posts, expect: [:index, :show, :new, :create, :edit, :update]
  resources :groups, only: [:index, :new, :create, :edit, :update] do
  resources :messages, only: [:index, :create]
 

  namespace :api do
    resources :messages, only: :index, defaults: { format: 'json' }
    end

  end
end