Rails.application.routes.draw do
  devise_for :users
  root 'menus#index'
  root 'groups#index'
  root 'messages#index'

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

  # root to: 'users#index'
  # root to: 'mypage#index'

  resources :users, only: [:index, :edit, :update]
  resources :groups, only: [:index, :new, :create, :edit, :update] do
  resources :messages, only: [:index, :create]


  # resources :diary, only: [:index, :show, :new, :create, :edit, :update] 
  
 

  namespace :api do
    resources :messages, only: :index, defaults: { format: 'json' }
    end
  end
end