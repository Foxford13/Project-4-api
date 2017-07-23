Rails.application.routes.draw do
  get 'authentications/register'

  get 'authentications/login'

  resources :items
  scope :api do
    resources :users
  end
end
