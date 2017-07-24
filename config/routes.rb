Rails.application.routes.draw do
  get 'conversations/index'

  scope :api do
    resources :users, except: [:create]
    resources :items
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    resources :conversations, only: [:index, :create, :show] do
    resources :messages, only: [:index, :create]
    end
  end
end
