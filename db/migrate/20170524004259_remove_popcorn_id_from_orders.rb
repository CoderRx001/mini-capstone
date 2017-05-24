class RemovePopcornIdFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :popcorn_id, :integer
  end
end
