class CreateCartedPopcorns < ActiveRecord::Migration[5.0]
  def change
    create_table :carted_popcorns do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.string :status
      t.integer :order_id

      t.timestamps
    end
  end
end
