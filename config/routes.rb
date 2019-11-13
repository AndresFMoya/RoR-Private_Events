Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  get '/signup', to: 'users#new'
  get 'users/create'
  get 'users/show'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
