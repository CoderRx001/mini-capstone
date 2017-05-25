class User < ApplicationRecord
  has_secure_password
  
  has_many :orders
  has_many :carted_popcorns
  has_many :popcorns, through: :carted_popcorns

  def cart
    carted_popcorns.where(status: "carted")
  end
end
