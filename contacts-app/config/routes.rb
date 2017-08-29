Rails.application.routes.draw do
  get '/contacts' => 'contacts#contact_action'
end
