export const getReviews = (productId) => {
    return $.ajax({
        url: `/api/products/${productId}/reviews`,
        method: 'GET'
    })
}

export const getReview = (productId, reviewId) => {
    return $.ajax({
        url: `/api/products/${productId}/reviews/${reviewId}`,
        method: 'GET'
    })
}