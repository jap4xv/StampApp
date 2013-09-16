StampApp::Application.routes.draw do
  resources :categories

  resources :payment_notifications
  	get 'tags/:tag', to: 'stamps#index', as: :tag
  
  resources :stamps
  resources :charges
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  root :to => 'stamps#index'
  
  devise_for :admins, :skip => [:registrations]                                          
    as :admin do
      get 'admins/edit' => 'devise/registrations#edit', :as => 'edit_admin_registration'    
      put 'admins' => 'devise/registrations#update', :as => 'admin_registration'            
    end
end
