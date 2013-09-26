StampApp::Application.routes.draw do
  resources :categories

  resources :payment_notifications
  	get 'tags/:tag', to: 'stamps#index', as: :tag
  
  resources :stamps
  resources :charges
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  root :to => 'stamps#index'
  
  devise_for :admins
end
