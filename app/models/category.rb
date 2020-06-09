class Category < ApplicationRecord
        # has_many :sub_cats, foreign_key: :main_cat_id, class_name: :Category 
    has_many :tags, foreign_key: :category_id, class_name: :Tag
    has_many :products, through: :tags 
  
end
