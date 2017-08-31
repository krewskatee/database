Rails.application.routes.draw do
  get '/contacts' => 'contacts#contact_action'
  post '/send_contacts' => 'contacts#send_contacts'
end
