# == Schema Information
#
# Table name: tags
#
#  id          :bigint           not null, primary key
#  category_id :integer
#  product_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Tag < ApplicationRecord
    validates :category_id, :product_id, presence: true

    belongs_to :category, foreign_key: :category_id, class_name: :Category
    belongs_to :product, foreign_key: :product_id, class_name: :Product
end
