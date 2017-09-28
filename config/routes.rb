Rails.application.routes.draw do

  root 'user#index'

  post '/saved_articles' => 'saved_articles#create'
  post 'saved_articles' => 'saved_articles#destroy'

  get '/my_articles' => 'user#show'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end
