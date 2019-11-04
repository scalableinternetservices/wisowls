Rails.application.routes.draw do
  get 'conversations/index'
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
  resources :users
  resources :conversations do
    resources :messages
  end
end
