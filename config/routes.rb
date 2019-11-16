Rails.application.routes.draw do
  get 'conversations/index'

  root 'sessions#new'
  get 'sessions/new'
  get '/about', to: 'pages#about'
  get '/home', to: 'matcher#home'

  get 'users/dashboard'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  get    '/profile', to: 'users#profile'
  
  get '/matcher', to: 'matcher#home'
  
  resources :dogs
  resources :users
  resources :conversations do
    resources :messages
  end
  
  resources :conversations do
    member do 
        post 'test'
    end
end
end
