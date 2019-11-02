Rails.application.routes.draw do
  root 'pages#home'
  get 'sessions/new'
  get '/about', to: 'pages#about'
  get '/home', to: 'pages#home'
  get '/profile', to: 'pages#profile'
  get 'users/myprofile'
  get  '/signup',  to: 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  get    '/profile', to: 'users#profile'

  resources :users
end
