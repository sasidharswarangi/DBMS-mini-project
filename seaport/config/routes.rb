Rails.application.routes.draw do
  resources :ships
  resources :docks
  resources :ports
  resources :insurances
  resources :cargos
  resources :companies
  root to: 'pages#dashboard'
  get 'pages/dashboard'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
