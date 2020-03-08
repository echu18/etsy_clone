# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  price       :decimal(, )
#  seller_id   :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Product < ApplicationRecord
    validates :name, :price, presence: true
    validates :price, presence: true, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }

    belongs_to :seller, foreign_key: :seller_id, class_name: :User
    has_many :reviews, foreign_key: :product_id, class_name: :Review
    has_many_attached :photos

    # belongs_to :category, foreign_key: :category_id, class_name: :Category   - category table not created yet
    # has_many :cart_items, foreign_key: :product_id, class_name: :CartItem - cart table not created yet
    # has_many :reviews, foreign_key: :product_id, class_name: :Review  -review table not created yet
end
