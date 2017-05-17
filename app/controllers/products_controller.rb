class ProductsController < ApplicationController
  
  # def popcorn_page
  #   @popcorn = Popcorn.all 
  #   render 'popcorn_page.html.erb'
  # end

  def index
    @products = Popcorn.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount = params[:discount]
    search_term = params[:search_term]

      if search_term
        @products = Product.where(
                                  "name iLIKE ? OR description iLIKE?",
                                   "%#{search_term}%",
                                   "%#{search_term}%"
                                   )
      end

      if discount
        @products = @products.where("price < ?", discount)
      end

      if sort_attribute && sort_order
        @products = @products.order(sort_attribute => sort_order)
      elsif sort_attribute
        @products = @products.order(sort_attribute)

      end
  end

  def show
   @products = Popcorn.all
  end

  def new
    
  end
  def create
    product = Popcorn.new(
                        brand: params[:brand],
                        name: params[:name],
                        price: params[:price],
                        image: params[:image],
                        description: params[:description]
                         )
    product.save
  end
  
  def edit
    @product = Popcorn.find(params[:id])
  end
  def update
    product = Popcorn.find(params[:id])
    product.assign_attributes(
                        brand: params[:brand],
                        name: params[:name],
                        price: params[:price],
                        image: params[:image],
                        description: params[:description]
                         )
    product.save
    flash[:success] = "Product Successfully Created"
    redirect_to "/products/#{ product.id }"
  end

   def destroy
    product = Popcorn.find(params[:id])
    product.destroy
    flash[:success] = "Product Destroyed"
    redirect_to "/"
  end

  def random
    product = Product.all.sample
    redirect_to "/products/#{product.id}"
  end
end
