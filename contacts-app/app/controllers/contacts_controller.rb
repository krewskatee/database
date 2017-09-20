class ContactsController < ApplicationController

  def show
    if current_user
      @contact = Contact.find(params[:id])
    else
      flash[:warning] = 'Please Log In'
    end
  end

  def index
    if current_user
      @contacts = current_user.contacts
      category_attribute = params[:category]

      if category_attribute
        @contacts = Group.find_by(name: params[:category]).contacts
      end

    else
      flash[:warning] = 'Please Log In'
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
  contact = Contact.find(params[:id])
  contact.update_attributes(
                            first_name: params[:first_name],
                            middle_name: params[:middle_name],
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
                            middle_name: params[:middle_name],
                            last_name: params[:last_name],
                            email: params[:email],
                            phone_number: params[:phone_number],
                            bio: params[:bio],
                            user_id: current_user.id
                            )
    redirect_to("/")
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    redirect_to("/")
  end


end
