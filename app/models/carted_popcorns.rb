class CartedPopcorn < ApplicationRecord
  belongs_to :user
  belongs_to :popcorn 
  belongs_to :order, optional: true


  def calculate_subtotal(products)
    subtot = 0
    products.each do |carted_popcorn|
      subtot += carted_popcorn.product.price * carted_popcorn.quanity 
    end

    self.subtotal = subtot
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = subtotal + tax 
  end
    
  
end
