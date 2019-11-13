Rails.application.routes.draw do
  get 'events/new'
  get 'events/create'
  get 'events/show'
  get 'events/destroy'
  get 'events/index'
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  get "/signup", to: "users#new"
  resources :users
  root 'sessions#new'
end
