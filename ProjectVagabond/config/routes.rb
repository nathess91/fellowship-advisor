Rails.application.routes.draw do
  root to: 'cities#index'

  get '/cities', to: 'cities#index', as: 'cities'
  get '/cities/:name', to: 'cities#show', as: 'city'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

  resources :users, except: :index
  resources :posts
end
