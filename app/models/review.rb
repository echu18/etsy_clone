# == Schema Information
#
# Table name: reviews
#
#  id         :bigint           not null, primary key
#  body       :text
#  author_id  :integer
#  product_id :integer
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Review < ApplicationRecord
    validates :body, :author_id, :product_id, :created_at, :updated_at, presence: true

    belongs_to :author, foreign_key: :author_id, class_name: :User
    belongs_to :product, foreign_key: :product_id, class_name: :Product


end
