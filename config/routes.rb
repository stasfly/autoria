Rails.application.routes.draw do
  root 'users#index'
  resources :posts
  resources :news
  resources :cars
  resources :announcements
  resources :users

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
