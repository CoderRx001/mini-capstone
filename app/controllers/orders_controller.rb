class OrdersController < ApplicationController
  def create
    product = Popcorn.find(params[:product_id])

    order = Order.new(
                      quantity: params[:quantity],
                      product_id: params[:product_id],
                      user_id: current_user.id,
                      subtotal: calculated_subtotal
                      tax: calcuated_tax
                      total: calculated_total
                      )

    order.calculate_subtotal
    order.tax = order.subtotal * 0.09
    order.total = order.subtotal + order.tax

    order.save
    # session[:order_id] = order_id
    flash[:success] = "Your Order was made" 
    redirect_to "/orders/#{ order.id }"
  end

  def show
    @order_id = params[:id]
    @order = Order.find_by(id: @order_id)

    @quantity = (@order.quantity)
  end
end

