class AddSaleDateToSales < ActiveRecord::Migration[7.1]
  def change
    add_column :sales, :sale_date, :date
  end
end
