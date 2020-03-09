# json.reviews do 
#     json.set! @review.id do 
#         json.partial! '/api/products/:productId/reviews/:reviewId', review: @review
#     end
# end

# json.reviews do 
#     json.set! @review.id do 
#         json.partial! 'api/products/product/reviews/review', review: @review
#     end
# end

# json.reviewers do 
#     json.set! @review.author_id do
#         json.partial! 'api/users/user', user: @review.author
#         json.photoUrls @review.seller.photos.map { |file| url_for(file) }
#     end
# end
