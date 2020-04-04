class Api::CartItemsController < ApplicationController
    
    def index
        return nil if !current_user
        @cart_items = CartItem.all.select {|cart_item| cart_item.user_id == current_user.id && cart_item.fulfilled == false}        
        render :show
    
    end


    def show
        # @cart_item = CartItem.find_by_user_id(params[:user_id])
        # if @cart_item.user_id === current_user.id 
        #     render: show
        # end
        return nil if !current_user
        @cart_items = CartItem.all.select {|cart_item| cart_item.user_id == current_user.id && cart_item.fulfilled == false}
    end



    def create
        @cart_item = CartItem.new(cart_item_params)
        
        if @cart_item.save!
        #     render :index
        # else
        #     render json: @cart_item.errors.full_messages, status: 401
        end
    end



    def update
        @cart_item = CartItem.find_by(id: params[:id])
        if @cart_item.user_id == current_user.id
            if @cart_item.update_attributes(cart_item_params)
                render :show
            else
                render json: @product.errors.full_messages, status: 401
            end
        end
    end



    def destroy 
        @cart_item = CartItem.find(params[:id])

        if current_user && @cart_item && (@cart_item.user_id == current_user.id)
            @cart_item.delete
        else  
            render json: @cart_item.errors.full_messages, status: 401
        end
    end


    private

    def cart_item_params
        params.require(:cart_item).permit(:user_id, :product_id, :quantity, :fulfilled)
    end

    
end
