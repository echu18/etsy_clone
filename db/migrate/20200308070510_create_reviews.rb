class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :author_id
      t.integer :product_id
      t.integer :rating
      t.timestamps
    end
  end
end
