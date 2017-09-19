class OrdersController < ApplicationController

  def show
    @order = current_user.orders.last
    @order_image_url = current_user.orders.last.weapon.images.first.image_url
    @order_weapon_name = current_user.orders.last.weapon.name
  end

  def new

  end

  def create
    product = Weapon.find(params[:weapon_id])
    order = Order.new(
                    user_id: current_user.id,
                    weapon_id: params[:weapon_id],
                    quantity: params[:quantity],
                    )
    order.subtotal = product.subtotal_with_quantity(order.quantity)
    order.tax = product.tax_with_quantity(order.quantity)
    order.total = product.total_with_quantity(order.quantity)
    if order.save
      flash[:success] = "Successfully created order."
      redirect_to "/orders/#{order.id}"
    end
  end

end
