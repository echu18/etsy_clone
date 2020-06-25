# json.reviews do 
#     json.set! @review.id do 
#         json.partial! '/api/products/:productId/reviews/:reviewId', review: @review
#     end
# end



    json.set! @review.id do 
        json.partial! 'api/reviews/review', review: @review
    end

# json.reviewers do 
#     json.set! @review.author_id do
#         json.partial! 'api/users/user', user: @review.author
#         json.photoUrls @review.seller.photos.map { |file| url_for(file) }
#     end
# end
