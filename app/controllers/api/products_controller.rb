class Api::ProductsController < ApplicationController
    include Rails.application.routes.url_helpers
    
    def index
      debugger
      @products = Product.search(params[:search])
      # debugger
      # if params[:search] == nil
      #   @products = Product.all
      # else 
      #   @products = Product.search(params[:search])
      #   if !@products 
      #     render json: "No products found"
      #   else
      #     return @products
      #   end
      # end

        # debugger
        #  if params[:search] == ""
        #   return @products
        # else
        #   selected = @products.select {|product| product.name.split(" ").include?(params[:search])}
          
        #   if selected
        #     return selected
        #   else
        #     render json: @product.errors.full_messages, status: 401
        #   end
    end

    def show
        @product = Product.with_attached_photos.find(params[:id])
    end


    def search
       debugger
        # @products = Product.search(params[:search])
        # return @products
        @products = Product.all
        
        if params[:search] == ""
          return @products
        else
          selected = @products.select {|product| product.name.split(" ").include?(params[:search])}
          
          if selected
            return selected
          else
            render json: @product.errors.full_messages, status: 401
          end
        end
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
        params.require(:product).permit(:name, :description, :price, :seller_id, :category_id, :search, photos: [])
    end

    



    
end
