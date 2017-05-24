class CartedProductsController < ApplicationController
  

  def index
    @carted_products = CartedPopcorn.where(status: "Carted",user_id: current_user.id)
  end

  def create
    carted_products = CartedPopcorn.new(
                                        user_id: current_user.id,
                                        product_id: params[:product_id],
                                        quantity: params[:quantity],
                                        status: "carted"
                                        )
    carted_products.save
    redirect_to '/carted_products'
  end

  # def show
  #   @cart_id = params[:id]
  #   @cart = CartedPopcorn.find_by(id: @cart_id)

  #   @quantity = (@cart.quantity)
  # end
end
