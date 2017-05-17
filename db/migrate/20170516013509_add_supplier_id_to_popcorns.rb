class AddSupplierIdToPopcorns < ActiveRecord::Migration[5.0]
  def change
    add_column :popcorns, :supplier_id, :integer
  end
end
