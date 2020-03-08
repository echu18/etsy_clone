json.products do 
    json.set! @product.id do 
        json.partial! 'api/products/product', product: @product
        json.photoUrls @product.photos.map { |file| url_for(file) }
    end
end


json.users do 
    json.set! @product.seller_id do
        json.partial! 'api/users/user', user: @product.seller
        json.photoUrls @product.seller.photos.map { |file| url_for(file) }
    end
end


# json.reviews do 
#     @product.reviews.each do |review|
#         json.set! review.id do
#             json.partial! 'api/reviews/review', review: review
#         end
#     end
# end


# json.users do 
#     json.set! @product.seller_id do
#         json.partial! 'api/users/user', user: @product.seller
#     end
# end



