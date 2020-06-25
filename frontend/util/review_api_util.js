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

export const createReview = review => {
    
    return $.ajax({
        method: 'POST',
        url: 'api/reviews',
        data: { review }
    })
};


export const modifyReview = (reviewId, review) => {
    return $.ajax({
        method: 'PATCH',
        url: `api/reviews/${reviewId}`,
        data: { review }
    })
};


export const destroyReview = (reviewId) => {
    return $.ajax({
        url: `/api/reviews/${reviewId}`,
        method: "DELETE"
    });
};
