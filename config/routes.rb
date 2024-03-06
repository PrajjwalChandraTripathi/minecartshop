Rails.application.routes.draw do
  get 'payments/new'
  get 'payments/create'
  # Devise routes for regular users
  devise_for :users
  
  root "products#index"

  # Resource routes for products controller
  resources :products, only: [:index, :show]

  # Resource routes for cart controller
  resources :cart, only: [:index]

  # Devise routes for admin users without ActiveAdmin configuration
  devise_for :admin_users, path:'admins'

  # ActiveAdmin routes configuration
  ActiveAdmin.routes(self)

  # Root route to ActiveAdmin dashboard for admin users
  #root "admin/dashboard#index"
end
