import { RECEIVE_REVIEW, RECEIVE_REVIEWS} from '../actions/review_actions';
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
        case RECEIVE_PRODUCT:
            return Object.assign({}, state, action.payload.reviews)
        default:
            return state
    }
}