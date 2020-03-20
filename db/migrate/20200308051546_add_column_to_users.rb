class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :store_name, :string
  end
end
