Rails.application.routes.draw do
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions

  resources :contacts do
    resources :phones
  end

  root 'contacts#index'
  #TODO
  patch 'hidden_contact' => 'contacts#hide_contact'


end
