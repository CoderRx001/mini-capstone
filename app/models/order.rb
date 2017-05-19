class Order < ApplicationRecord
  belongs_to :popcorn, optional: true
  belongs_to :user
end
