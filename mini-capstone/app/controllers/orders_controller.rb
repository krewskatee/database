class OrdersController < ApplicationController

  def show
    @order = current_user.orders.last

  end

  def new

  end

  def create

    subtotal = 0
    tax = 0
    total = 0

    carted_weapons = current_user.current_cart

    carted_weapons.each do |carted_weapon|
      subtotal += carted_weapon.weapon.price * carted_weapon.quantity
      tax += carted_weapon.weapon.tax_with_quantity(carted_weapon.quantity)
      total += carted_weapon.weapon.total_with_quantity(carted_weapon.quantity)

      order = Order.create(
                      user_id: current_user.id,
                      subtotal: subtotal,
                      tax: tax,
                      total: total
                      )
      carted_weapon.update_attributes(
                                      status: "ordered",
                                      order_id: order.id
                                      )
    end
      redirect_to "/orders/#{order.id}"
  end

end
