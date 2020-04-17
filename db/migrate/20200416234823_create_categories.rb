class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.references :main_cat, index: true
      t.timestamps
    end
  end
end
