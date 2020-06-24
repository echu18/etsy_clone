# json.users do 
#     json.set! @user.id do
#         json.partial! 'api/users/user', user: @user
#         json.photoUrls @user.photos.map { |file| url_for(file) }
#     end
# end



json.currentUser do 
    json.id current_user.id
end

json.users do 
    json.set! current_user.id do
        json.partial! 'api/users/user', user: current_user
        json.photoUrls @user.photos.map { |file| url_for(file) }
    end
end


json.cartItems do 
     current_user.cart_items.each do |cart_item|
        json.set! cart_item.id do 
            json.partial! "api/cart_items/cart_item", cart_item: cart_item
        end
     end
end


# json.products do 
#     # debugger
#      current_user.cart_items.each do |cart_item|
#         json.set! cart_item.product_id do 
#             json.partial! 'api/products/product', product: cart_item
#         end
#      end
# end