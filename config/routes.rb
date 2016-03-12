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
  get 'orders/index'
  post 'orders/remove'

  # food/reviews
  resources :foods, only: [:show]
  resources :food do
    resources :reviews, only: [:create]
  end
end
