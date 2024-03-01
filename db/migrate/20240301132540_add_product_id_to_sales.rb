class AddProductIdToSales < ActiveRecord::Migration[7.1]
  def change
    add_column :sales, :product_id, :integer
    add_index :sales, :product_id
  end
end
