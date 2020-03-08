# json.reviews do 
#     json.set! @review.id do 
#         json.partial! '/api/products/:productId/reviews/:reviewId', review: @review
#     end
# end

json.reviews do 
    json.set! @review.id do 
        json.partial! 'api/products/product/reviews/review', review: @review
    end
end
