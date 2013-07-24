StampApp::Application.routes.draw do
  resources :payment_notifications
  	get 'tags/:tag', to: 'stamps#index', as: :tag
  devise_for :admins
  resources :stamps
  resources :charges
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  root :to => 'stamps#index'
end
