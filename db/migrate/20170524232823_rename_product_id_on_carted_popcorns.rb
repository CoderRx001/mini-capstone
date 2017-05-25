class RenameProductIdOnCartedPopcorns < ActiveRecord::Migration[5.0]
  def change
    rename_column :carted_popcorns, :product_id, :popcorn_id
  end
end
