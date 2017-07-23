Rails.application.routes.draw do
  resources :items
  scope :api do
    resources :users
  end
end
