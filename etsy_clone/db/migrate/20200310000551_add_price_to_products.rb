class AddPriceToProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :price_cents
    remove_column :products, :price_currency
    add_column  :products, :price, :decimal, precision: 10, scale: 2
  end
end
