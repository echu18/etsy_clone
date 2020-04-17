# == Schema Information
#
# Table name: categories
#
#  id          :bigint           not null, primary key
#  main_cat_id :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Category < ApplicationRecord
    has_many :sub_cats, foreign_key: :main_cat_id, class_name: :Category 

    belongs_to :main_cat, class_name: :Category
end
