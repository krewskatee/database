class WeaponsController < ApplicationController

  def index

    @weapons = Weapon.all
  end

  def show

    @weapon = Weapon.find(params[:id])

  end

  def create
    weapon = Weapon.create(
                        name: params[:name],
                        price: params[:price],
                        image_url: params[:image_url],
                        description: params[:description]
                      )
    flash[:success] = "Listing Successfully Created"
    redirect_to "/weapons/#{ weapon.id }"
  end

  def show
    @weapon = Weapon.find(params[:id])
  end

  def edit
    @weapon = Weapon.find(params[:id])
  end

  def update
    weapon = Weapon.find(params[:id])
    weapon.update_attributes(
                                    name: params[:name],
                                    price: params[:price],
                                    image_url: params[:image_url],
                                    description: params[:description]
                                    )
    flash[:success] = "Listing Successfully Updated"
    redirect_to "/weapons/#{ weapon.id }"
  end

  def destroy
    weapon = Weapon.find(params[:id])
    weapon.destroy
    flash[:danger] = "Listing Successfully Deleted"
    redirect_to("/")
  end

end
