Rails.application.routes.draw do

  root 'site/static_pages#home'
  
  devise_for :administrators
  
  get 'administrators/dashboard', as: 'administrator_root'

  match "/administrators/products/checked" => "administrators/products#checked", via: [:get, :post]

  scope module: 'site' do
    resources :products
    resources :product_categories
    resources :post_categories
    resources :posts
    resources :back_calls
    resources :product_questions
    resources :form_requests
    resources :carts
    resources :line_items
    resources :orders
  end

  namespace :administrators do
    resources :products
    resources :product_attacments
    resources :product_categories
    resources :post_categories
    resources :posts
    resources :menus
    resources :menu_items
    resources :sliders
    resources :slides
    resources :site_variables
    resources :pages
    resources :back_calls
    resources :product_questions
    resources :banners
    resources :form_requests
    resources :orders 
  end



end
