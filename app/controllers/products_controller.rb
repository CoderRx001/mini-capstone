class ProductsController < ApplicationController
  
  # def popcorn_page
  #   @popcorn = Popcorn.all 
  #   render 'popcorn_page.html.erb'
  # end

  def index
    @products = Popcorn.all
  end

  def show
    products_id = params[:id]
    @products = Popcorn.find_by(id: products_id)
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
    priduct.save
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
end
