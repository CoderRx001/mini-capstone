class CreatePopcorns < ActiveRecord::Migration[5.0]
  def change
    create_table :popcorns do |t|
      t.string :brand
      t.string :name
      t.string :price
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
