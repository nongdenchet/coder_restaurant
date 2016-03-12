Rails.application.routes.draw do
  # welcome
  root 'welcome#index'
  get 'welcome/index'
  get 'welcome/contact'

  # menu
  get 'menu/index'
  get 'menu/display'
  post 'menu/sort'

  # orders
  post 'orders/add'
  post 'orders/remove'
  post 'orders/create'
  post 'orders/coupon'
  get 'orders/index'

  # food/reviews
  resources :foods, only: [:show]
  resources :food do
    resources :reviews, only: [:create]
  end
end
