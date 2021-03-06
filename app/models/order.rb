class Order < ApplicationRecord
  belongs_to :popcorn, optional: true
  belongs_to :user
  
  has_many :carted_popcorns
  has_many :popcorns, through: :carted_popcorns


  def calculate_subtotal
    self.subtotal = popcorn.price * quantity
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = subtotal + tax 
  end
end
