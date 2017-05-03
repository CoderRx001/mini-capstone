class ProductsController < ApplicationController
  
  def popcorn_page
    @popcorn = Popcorn.all 
    render 'popcorn_page.html.erb'
  end

end
