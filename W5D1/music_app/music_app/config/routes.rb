Rails.application.routes.draw do

  resources :bands
  resources :users, only: [:create, :new, :show, :index]
  resource :session, only: [:create, :new, :destroy]

  root 'users#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
