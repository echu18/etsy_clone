import { getReviews, getReview, createReview, modifyReview, destroyReview } from '../util/review_api_util';

export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const RECEIVE_REVIEWS = 'RECEIVE_REVIEWS';
export const CLEAR_REVIEWS = 'CLEAR_REVIEWS';
export const REMOVE_REVIEW = 'REMOVE_REVIEW';
export const RECEIVE_REVIEW_ERRORS = 'RECEIVE_REVIEW_ERRORS';
export const CLEAR_ERRORS = 'CLEAR_ERRORS';



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

const removeReview = review => ({
    type: REMOVE_REVIEW,
    review
})

const receiveErrors = errors => ({
    type: RECEIVE_REVIEW_ERRORS,
    errors
})

const removeErrors = () => ({
    type: CLEAR_ERRORS
})


export const fetchReviews = (productId) => dispatch => getReviews(productId)
    .then(reviews => dispatch(receiveReviews(reviews)))

export const fetchReview = (productId, reviewId) => dispatch => getReview(productId, reviewId)
    .then(review => dispatch(receiveReview(review)))


export const clearReviews = () => dispatch => dispatch(removeReviews())




export const addReview = (data) => dispatch => createReview(data)
    .then(review => dispatch(receiveReview(review)),
        error => dispatch(receiveErrors(error.responseJSON)))


export const editReview = (reviewId, data) => dispatch => modifyReview(reviewId, data)
    .then(review => dispatch(receiveReview(review)),
        error => dispatch(receiveErrors(error.responseJSON)))


export const deleteReview = (reviewId) => dispatch => destroyReview(reviewId)
    .then(review => dispatch(removeReview(review)));


export const clearErrors = () => dispatch => dispatch(removeErrors())
