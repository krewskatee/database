Rails.application.routes.draw do
  get '/' => 'recipes#index'
  get '/recipes' => 'recipes#index'

  get '/recipes/new' => 'recipes#new'
  post '/recipes/create' => 'recipes#create'

  get '/recipes/:id' => 'recipes#show'
end
