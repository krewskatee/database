class ContactsController < ApplicationController

  def show
    @contact = Contact.find(params[:id])
  end

  def index
    @contacts = Contact.all
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
  contact = Contact.find(params[:id])
  contact.update_attributes(
                            first_name: params[:first_name],
                            middle_name: params[:first_name],
                            last_name: params[:last_name],
                            email: params[:email],
                            phone_number: params[:phone_number],
                            bio: params[:bio]
                          )
  redirect_to "/contacts/#{ contact.id }"
  end


  def create
    contact = Contact.create(
                            first_name: params[:first_name],
                            middle_name: params[:first_name],
                            last_name: params[:last_name],
                            email: params[:email],
                            phone_number: params[:phone_number],
                            bio: params[:bio]
                            )
    redirect_to("/")
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    redirect_to("/")
  end


end
