class ContactsController < ApplicationController

  def contact_action
    render 'contacts.html.erb'
  end

  def send_contacts
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]
    @phone_number = params[:phone_number]
  end
end
