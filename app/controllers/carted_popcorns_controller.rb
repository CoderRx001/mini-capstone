class CartedPopcornsController < ApplicationController
  

  def index
    if current_user.cart.count
      @carted_products = current_user.cart
    else
      flash[:warning] = "why don't you add something to your cart dude"
      redirect_to "/"
    end
  end

  def create
    carted_products = CartedPopcorn.new(
                                        user_id: current_user.id,
                                        quantity: params[:quantity],
                                        popcorn_id: params[:product_id],
                                        status: "carted"
                                        )
    carted_products.save
    flash[:success] = "Item added to cart"
    redirect_to '/carted_products'
  end

  def destroy
    carted_product = CartedPopcorn.find(params[:id])
    carted_product.update(status: "removed")
    flash[:success] = "Item was removed"
    redirect_to '/carted_products'
  end

end
