Forms::Application.routes.draw do

  root 'static_pages#home'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :reset_password

  match '/signup', to: 'users#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
  post '/reset_password/new', to: 'reset_password#create', as: 'send_reset_password'
  post '/reset_password', to: 'reset_password#update'

end
