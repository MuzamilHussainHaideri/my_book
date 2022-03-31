Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :books do
    resources :reviews
  end

  namespace :api do
    namespace :v1 do
      resources :users
      resources :books do
        resources :reviews
      end
    end
  end


  root 'books#index'
  resources :order_items
  resource :carts, only: [:show]
end
