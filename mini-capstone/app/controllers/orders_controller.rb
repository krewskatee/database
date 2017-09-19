class OrdersController < ApplicationController

  def show
    @order = current_user.orders.last
  end

  def new

  end

  def create

    order = Order.new(
                    user_id: current_user.id,
                    weapon_id: params[:weapon_id],
                    quantity: params[:quantity],
                    subtotal: params[:subtotal].to_i * params[:quantity].to_i,
                    tax: params[:tax].to_i * params[:quantity].to_i,
                    total: params[:total].to_i * params[:quantity].to_i
                    )
    if order.save
      flash[:success] = "Successfully created order."
      redirect_to '/orders/show'
    end
  end

end
