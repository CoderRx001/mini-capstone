class OrdersController < ApplicationController
  def create
    carted_popcorn = current_user.cart

    subtotal = 0 

    carted_popcorn.each do |carted_popcorn|
      subtotal += carted_popcorn.popcorn.price * carted_popcorn.quantity
    end

    tax = subtotal * 0.09
    total = subtotal + tax 

    order = Order.new(
                      user_id: current_user.id,
                      subtotal: subtotal,
                      tax: tax,
                      total: total
                      )
    order.save

    carted_popcorn.update.all(status: "purchased", order_id: order.id )

    flash[:success] = "Your Order was made" 
    redirect_to "/orders/#{ order.id }"
  end

  def show
    @order = Order.find(params[:id])
  end
end

