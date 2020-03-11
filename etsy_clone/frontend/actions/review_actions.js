import { getReviews, getReview } from '../util/review_api_util';

export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const RECEIVE_REVIEWS = 'RECEIVE_REVIEWS';
export const CLEAR_REVIEWS = 'CLEAR_REVIEWS';


const receiveReviews = reviews => ({
    type: RECEIVE_REVIEWS,
    reviews
})

const receiveReview = review => ({
    type: RECEIVE_REVIEW,
    review
})

const removeReviews = () => ({
    type: CLEAR_REVIEWS
})


export const fetchReviews = (productId) => dispatch => getReviews(productId)
    .then(reviews => dispatch(receiveReviews(reviews)))

export const fetchReview = (productId, reviewId) => dispatch => getReview(productId, reviewId)
    .then(review => dispatch(receiveReview(review)))


export const clearReviews = () => dispatch => dispatch(removeReviews())
