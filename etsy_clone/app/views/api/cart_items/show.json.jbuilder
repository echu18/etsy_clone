
json.products do 
    json.set! @product.id do 
        json.partial! 'api/products/product', product: @product
        json.photoUrls @product.photos.map { |file| url_for(file) }
    end
end


json.users do 
    json.set! @cart_item.user_id do
        json.partial! 'api/users/user', user: @cart_item.user
        json.photoUrls cart_item.user.photos.map { |file| url_for(file) }
    end
end