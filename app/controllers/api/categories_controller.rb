class Api::CategoriesController < ApplicationController
     def create
        @category = Category.new(category_params)
        
        if @category.save!
        #     render :index
        else
            render json: @category.errors.full_messages, status: 401
        end
    end



    private

    def category_params
        params.require(:category).permit(:main_cat_id)
    end
end
