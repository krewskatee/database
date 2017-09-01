Rails.application.routes.draw do
  get '/' => 'weapons#index'
  get '/weapons' => 'weapons#index'
  get '/weapons/:id' => 'weapons#show'
end
