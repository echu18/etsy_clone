# == Schema Information
#
# Table name: cart_items
#
#  id         :bigint           not null, primary key
#  user_id    :integer
#  product_id :integer
#  quantity   :integer
#  fulfilled  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class CartItem < ApplicationRecord
    validates :user_id, :product_id, :quantity, presence: true
    validates :fulfilled, inclusion: { in: [true, false]}

    belongs_to :user, foreign_key: :user_id, class_name: :User
    belongs_to :product, foreign_key: :product_id, class_name: :Product
    

 

end
