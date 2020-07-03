Rails.application.routes.draw do


  resources :replies
  resources :emoticons
  resources :follows
  get '/followers', to: "follows#followers"
  get '/followees', to: "follows#followees"

  resources :users
  get '/profile_page/:id', to: 'users#foreign_show', as: 'profile'

  root "application#hello"
  
  get '/signup', to: 'users#new'
  post '/create', to: 'application#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  resources :hashtags
  resources :comments
  resources :posts

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
