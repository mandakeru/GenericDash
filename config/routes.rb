Rails.application.routes.draw do
  resources :transactions
  resources :customers
  resources :products
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  root 'home#index'

  
end
