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
end

def destroy
  weapon = Weapon.find(params[:id])
  weapon.destroy
end

end
