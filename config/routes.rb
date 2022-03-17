Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :books do
    resources :reviews
  end
  root 'books#index'
  post "book/add_to_cart/:id", to: "book#add_to_cart", as: "add_to_cart"
  delete "book/remove_from_cart/:id", to: "book#remove_from_cart", as: "remove_from_cart"
end
