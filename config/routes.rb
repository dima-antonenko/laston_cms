Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  root 'site/static_pages#home'
  
  devise_for :administrators
  
  get 'administrators/dashboard', as: 'administrator_root'

  match "/administrators/products/checked" => "administrators/products#checked", via: [:get, :post]

  scope module: 'site' do
    resources :products, only: [:show]

    resources :product_categories, only: [:show]

    resources :post_categories, only: [:show]

    resources :posts, only: [:show]

    resources :back_calls, only: [:create]

    resources :product_questions, only: [:create]

    resources :form_requests, only: [:create]

    resources :carts, only: [:show, :create, :destroy]

    resources :line_items, only: [:create, :destroy]
    
    resources :orders, only: [:create]
  end

  match "/orders/create_quick" => "site/orders#create_quick", via: [:post]

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
