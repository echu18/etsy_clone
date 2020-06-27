import { RECEIVE_REVIEW, RECEIVE_REVIEWS, CLEAR_REVIEWS, REMOVE_REVIEW} from '../actions/review_actions';
import { RECEIVE_PRODUCTS, RECEIVE_PRODUCT } from '../actions/product_actions';


export default (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_REVIEWS:
            const reviews = {}
            action.reviews.forEach(review => {
                reviews[review.id] = review;
            });
            return reviews
        case RECEIVE_REVIEW:
            return Object.assign({}, state, action.review)
        case REMOVE_REVIEW:
            // need to remove action.review
            return Object.assign({}, state)
        case RECEIVE_PRODUCT:
            return Object.assign({}, state, action.payload.reviews)
        case CLEAR_REVIEWS:
            return {}
   
        default:
            return state
    }
}