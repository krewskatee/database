Rails.application.routes.draw do
  get '/' => 'weapons#index'
  get '/weapons' => 'weapons#index'
  get '/weapons/new' => 'weapons#new'
  post '/weapons/create' => 'weapons#create'

  get '/weapons/random' => 'weapons#random'

  get '/weapons/:id' => 'weapons#show'
  get '/weapons/:id/edit' => 'weapons#edit'


  patch '/weapons/:id' => 'weapons#update'

  delete '/weapons/:id' => 'weapons#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login/create' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  post '/orders' => 'orders#create'
  get '/orders/show' => 'orders#show'
end
