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
    validates :body, :author_id, :product_id, presence: true
    validates :rating, inclusion: { in: [1,2,3,4,5], message: 'Rating must be between 1 and 5'}

    belongs_to :author, foreign_key: :author_id, class_name: :User
    belongs_to :product, foreign_key: :product_id, class_name: :Product

    # attr_accessor :created_at, :updated_at

end
