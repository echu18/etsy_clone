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


    # Creates from product show page - will add/subtract from existing quantities (if any)
    def create
        if current_user && current_user.cart_items.any? {|cart_item| cart_item.product_id == params[:cart_item][:product_id].to_i}
            # @cart_item = CartItem.find_by(product_id: params[:cart_item][:product_id].to_i).select {|cart_item| cart_item.user_id == current_user.id}
            @cart_item = current_user.cart_items.find_by(product_id: params[:cart_item][:product_id].to_i)

            new_qty = @cart_item.quantity + params[:cart_item][:quantity].to_i

              if @cart_item.update_attributes({user_id: params[:cart_item][:user_id], product_id: params[:cart_item][:product_id], quantity: new_qty, fulfilled: false})
                    @cart_items = CartItem.all.select {|cart_item| cart_item.user_id == current_user.id && cart_item.fulfilled == false}        
                    # render :show
                else
                    render json: @product.errors.full_messages, status: 401
                end
        else
            @cart_item = CartItem.new(cart_item_params)
            
            return true if @cart_item.save!
        end
    end


    # Updates directly from the cart - will replace existing quantity
    def update 
        @cart_item = CartItem.find_by(id: params[:id])
        if @cart_item.user_id == current_user.id
            if @cart_item.update_attributes(cart_item_params)
                @cart_items = CartItem.all.select {|cart_item| cart_item.user_id == current_user.id && cart_item.fulfilled == false}        
                render :show
            else
                render json: @product.errors.full_messages, status: 401
            end
        end
    end



    def destroy 
        @cart_item = CartItem.find(params[:id])
        if current_user && @cart_item && (@cart_item.user_id == current_user.id)
            if @cart_item.delete
                @cart_items = CartItem.all.select {|cart_item| cart_item.user_id == current_user.id && cart_item.fulfilled == false}        
                render :show
            end
        else  
            render json: @cart_item.errors.full_messages, status: 401
        end

        #    render :show
    end


    private

    def cart_item_params
        params.require(:cart_item).permit(:user_id, :product_id, :quantity, :fulfilled)
    end

    
end
