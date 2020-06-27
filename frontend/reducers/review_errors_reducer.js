import {RECEIVE_REVIEW_ERRORS, CLEAR_ERRORS } from '../actions/review_actions';

export default (state = {}, action) => {
    switch (action.type) {
        case RECEIVE_REVIEW_ERRORS:
            const errors = action.errors;
            return Object.assign({}, errors);
        case CLEAR_ERRORS:
            return {}
        default:
            return state;
    }
}