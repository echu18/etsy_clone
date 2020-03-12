
json.products do 
    @cart_items.each do |cart_item|
        # json.set! cart_item.product.id do 
            json.partial! 'api/products/product', product: cart_item.product
            # json.photoUrls @product.photos.map { |file| url_for(file) }
        # end
    end
end


# json.users do 
#     json.set! @cart_item.user_id do
#         json.partial! 'api/users/user', user: @cart_item.user
#         json.photoUrls @cart_item.user.photos.map { |file| url_for(file) }
#     end
# end


# json.products do 
#     json.array! @cart_items do |cart_item|
#         json.partial! 'api/products/product', product: cart_item.product
#     end
# end

# json.set! @product.id do 
#     json.partial! 'api/products/product', product: @product
#     json.photoUrls @product.photos.map { |file| url_for(file) }
# end
json.cartItems do 
    @cart_items.each do |cart_item|
        json.set! cart_item.id do 
            json.partial! 'api/cart_items/cart_item', cart_item: cart_item
        end
    end
end

    # json.products do 
    #     @cart_item.products.each do |product|
    #         json.set! product.id do 
    #             json.partial! 'api/products/product', product: product
    #         end
    #     end
    # end


    # json.partial! 'api/products/product', product: cart_item.product
    # json.photoUrls product.photos.map { |file| url_for(file) }



    # json.users do 
    #     json.set! cart_item.user_id do
    #         json.partial! 'api/users/user', user: cart_item.user
    #     end
    # end
# end

