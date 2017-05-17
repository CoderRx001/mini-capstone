class MakeChangesToPopcorns < ActiveRecord::Migration[5.0]
  def change
    change_column :popcorns, :description, :text
    remove_column :popcorns, :price, :string
    add_column :popcorns, :price, :decimal, precision: 6, scale: 2
    add_column :popcorns, :active, :boolean, default: true
  end
end
