StampApp::Application.routes.draw do
  resources :categories

  resources :payment_notifications
  	get 'tags/:tag', to: 'stamps#index', as: :tag
  
  resources :stamps do
    #get :clone
    collection do
      post :edit_multiple
      put :update_multiple
    end
  end
    
  resources :charges
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  root :to => 'stamps#index'
  
  devise_for :admins
end
