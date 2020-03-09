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

    @product.authors.each do |author|
        json.set! author.id do 
            json.partial! 'api/users/user', user: author
            json.photoUrls author.photos.map { |file| url_for(file) }
        end
    end

    @product.reviews do |review|
        json.review.author_id do
            json.partial! 'api/users/user', user: review.author
            json.photoUrls review.author.photos.map { |file| url_for(file) }
        end
    end

end

    
json.reviews do 
    json.array! @product.reviews do |review|
        json.id review.id
        json.body review.body
        json.author_id review.author_id
        json.rating review.rating
    end
end












# json.reviews do 
#     @product.reviews do |review|
#         json.set! review.id do
#             json.partial! 'api/re views/review', review: review
#         end
#     end
# end


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



