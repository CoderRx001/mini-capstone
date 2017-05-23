class Category < ApplicationRecord    
  has_many :category_popcorns
  has_many :popcorns, through: :category_popcorns

end
