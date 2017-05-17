class ChangePriceToInteger < ActiveRecord::Migration[5.0]
  def change
     change_column :popcorns, :price, :integer, precision: 6, scale: 2
  end
end
