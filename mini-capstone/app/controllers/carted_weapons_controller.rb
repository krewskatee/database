class CartedWeaponsController < ApplicationController

  def index
    @carted_weapons = carted_weapons = current_user.current_cart
  end

  def create
    product = Weapon.find(params[:weapon_id])
    cart = CartedWeapon.new(
                    user_id: current_user.id,
                    weapon_id: product.id,
                    quantity: params[:quantity],
                    status: "carted"
                    )
    if cart.save
      flash[:success] = "Successfully added to cart."
      redirect_to "/checkout"
    end
  end

end
