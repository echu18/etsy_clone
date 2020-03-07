json.products do 
    json.set! @product.id do 
        json.partial! 'api/products/product', product: @product
        json.photoUrls @product.photos.map { |file| url_for(file) }
    end
end



# json.partial! 'api/products/product', product: @product

# json.photoUrls @product.photos.map { |file| url_for(file) }

json.users do 
    json.set! @product.seller_id do
        json.partial! 'api/users/user', user: @product.seller
    end
end



# json.users do 
#     json.set! @product.seller_id do
#         json.partial! 'api/users/user', user: @product.seller
#     end
# end



