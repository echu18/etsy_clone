class AddDecimalToProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :price
    add_column  :products, :price, :decimal, precision: 10, scale: 2
  end
end
