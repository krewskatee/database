class ContactsController < ApplicationController
  def contact_action

    @contacts = Contact.all

    render 'contacts.html.erb'
  end
end
