class Category < ApplicationRecord
        # has_many :sub_cats, foreign_key: :main_cat_id, class_name: :Category 
    has_many :tags, foreign_key: :category_id, class_name: :Tag
    has_many :products, through: :tags 
    # belongs_to :main_cat, class_name: :Category


    # def self.categories()
    #     @products= Product.all.select {}
    # end
end
