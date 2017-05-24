class CartedPopcorn < ApplicationRecord
  belongs_to :popcorn 
  belongs_to :order, optional: true
end
