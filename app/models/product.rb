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
    
    has_one :store_name, through: :seller
    has_many :tags, foreign_key: :product_id, class_name: :Tag
    has_many :categories, through: :tags 

    has_many_attached :photos

    after_initialize :avg_rating
    attr_reader :avg_rating, :search

    

    def avg_rating
        total = 0 
        
        self.reviews.each {|review| total += review.rating}
        @avg_rating = (total == 0)  ? 0 : (total/(self.reviews.count * 1.0))
        
        @avg_rating
    end
   


    def self.search(query)
        if query != nil
            if query.include?("?query=")
                query = query[7..-1].split("%20").join(" ")
                
                result = self.where("LOWER(name) LIKE ? OR LOWER(description) LIKE ?", "%#{query}%", "%#{query}%")
                if result 
                    @products = result
                else
                    @products = Product.all
                end
            elsif query.include?("?category=")
                
                query = query[10..-1].split("%20")
                query.reject! {|term| term == '&'}
                
                @products = Product.all.select do |product| 
                    # 
                    query.any? {|query_term| product.categories.any? {|category| category.name.downcase.split.include?(query_term.downcase)} }
                end
            end
        else
            @products = Product.all
        end
    end


end
