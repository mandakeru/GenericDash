Rails.application.routes.draw do
  get 'calendar/index'

  resources :transactions
  resources :customers
  resources :products
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  root 'home#index'

  
end
