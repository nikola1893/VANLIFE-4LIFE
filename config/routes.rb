Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :users

  resources :vans, except: [ :edit ] do
    resources :bookings, only: [ :new, :create, :update ]
  end

  get 'dashboard', to: 'pages#dashboard'

end
