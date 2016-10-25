Rails.application.routes.draw do
  root to: 'cities#index'

  get '/cities', to: 'cities#index', as: 'cities'
  get '/cities/:name', to: 'cities#show', as: 'city'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

  get '/users/:user_id/posts',     to: 'post_users#index', as: 'user_posts'
  post '/posts/:post_id/users', to: 'post_users#create', as: 'post_users'

  resources :users, except: :index
  resources :cities do
    resources :posts
  end
end
