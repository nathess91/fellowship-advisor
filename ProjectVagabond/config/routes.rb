Rails.application.routes.draw do
  root to: 'cities#index'


  get '/cities', to: 'cities#index', as: 'cities'
  get '/cities/:name', to: 'cities#show', as: 'city'

  resources :users, except: :index
  resources :posts
end
