class Api::ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def show
        @product = selected_product
    end

    # def create
    #   - will manually seed data for now
    # end

    # def update

    # end

    # def destroy 

    # end


    private
    def selected_product
        Product.find_by(params[:id])
        # Product.with_attached_photos.find_by(params[:id])
    end

    def product_params
        params.require(:product).permit(:name, :description, :price, :seller_id, :category_id)
    end

    



    
end
