Rails.application.routes.draw do
  resources :emoticons
  resources :follows
  resources :users

  root "application#hello"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  resources :hashtags
  resources :comments
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
