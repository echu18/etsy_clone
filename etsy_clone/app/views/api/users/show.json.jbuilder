json.users do 
    json.set! @user.id do
        json.partial! 'api/users/user', user: @user
        json.photoUrls @user.photos.map { |file| url_for(file) }
    end
end

json.cartItems do 
     @user.cart_items do |cart_item|
        json.set! cart_item.id do 
            json.partial! "api/cart_items/cart_item", cart_item: cart_item
        end
     end
end
# json.partial! 'api/users/user', user: @user
       