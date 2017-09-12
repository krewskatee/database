Rails.application.routes.draw do
  get '/' => 'weapons#index'
  get '/weapons' => 'weapons#index'
  get '/weapons/new' => 'weapons#new'
  post '/weapons/create' => 'weapons#create'

  get 'weapons/random' => 'weapons#random'

  get '/weapons/:id' => 'weapons#show'
  get '/weapons/:id/edit' => 'weapons#edit'


  patch 'weapons/:id' => 'weapons#update'

  delete '/weapons/:id' => 'weapons#destroy'
end
