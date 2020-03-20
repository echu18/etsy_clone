class Api::ProductsController < ApplicationController
    include Rails.application.routes.url_helpers
    
    def index
        @products = Product.all
    end

    def show
        @product = Product.with_attached_photos.find(params[:id])
    end

    def create
    @product = Product.new(product_params)

    # if params[:photos]
    #   @product.photos.attach(params[:photos])
    # end
    if @product.save!
      # @product.photos.attach(params[:photos])
      render :show
    else
      render json: @product.errors.full_messages, status: 401
    end
  end

    # def update

    # end

    # def destroy 

    # end


    private
  

    def product_params
        params.require(:product).permit(:name, :description, :price, :seller_id, :category_id, photos: [])
    end

    



    
end