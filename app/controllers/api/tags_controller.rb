class Api::TagsController < ApplicationController

    def create
        @tag = Tag.new(tag_params)
        
        if @tag.save!
        #     render :index
        else
            render json: @tag.errors.full_messages, status: 401
        end
    end



    private

    def tag_params
        params.require(:tag).permit(:category_id, :product_id)
    end


end
