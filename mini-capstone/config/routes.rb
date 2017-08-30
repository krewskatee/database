Rails.application.routes.draw do
  get '/weapon_listings' => 'weapons#weapons_action'
end
