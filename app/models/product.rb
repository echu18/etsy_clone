# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  seller_id   :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  price       :decimal(10, 2)
#
class Product < ApplicationRecord
    validates :name, :price, presence: true
    validates :price, presence: true


    belongs_to :seller, foreign_key: :seller_id, class_name: :User
    has_many :reviews, foreign_key: :product_id, class_name: :Review
    has_many :authors, through: :reviews
    has_many :cart_items, foreign_key: :product_id, class_name: :CartItem
    has_many :tags, foreign_key: :product_id, class_name: :Tag
    has_many :categories, through: :tags 

    has_many_attached :photos

    after_initialize :avg_rating
    attr_reader :avg_rating, :search
    # belongs_to :category, foreign_key: :category_id, class_name: :Category   - category table not created yet
    # has_many :cart_items, foreign_key: :product_id, class_name: :CartItem - cart table not created yet

    

    def avg_rating
        total = 0 
        
        self.reviews.each {|review| total += review.rating}
        @avg_rating = (total == 0)  ? 0 : ((total/self.reviews.count) * 1.0)

        @avg_rating
    end
    # def self.avg_rating(product_id)
    #     product = Product.find_by(id: product_id)
    #     return 0 if product.nil?

    #     total = 0 
        
    #     product.reviews.each {|review| total += review.rating}

    #     @avg_rating = (total/product.reviews.count)
    # end


    def self.search(query)
        if query != nil
            result = self.where("LOWER(name) LIKE ? OR LOWER(description) LIKE ?", "%#{query}%", "%#{query}%")
            if result 
                @products = result
            else
                @products = Product.all

            end
        else
            @products = Product.all
        end
        # where("name LIKE ? OR description LIKE ?", "%#{query}%", "%#{query}%")
    end


end
