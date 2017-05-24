class CategoryPopcorn < ApplicationRecord
  has_many :popcorn 
  has_many :category
end
