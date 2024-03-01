class AddQuantityToSales < ActiveRecord::Migration[7.1]
  def change
    add_column :sales, :quantity, :integer
  end
end
