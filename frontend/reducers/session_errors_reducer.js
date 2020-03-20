import { RECEIVE_CURRENT_USER, RECEIVE_SESSION_ERRORS, CLEAR_ERRORS } from '../actions/session_actions';

export default (state={}, action) => {
    switch (action.type) {
        case RECEIVE_SESSION_ERRORS:
            const errors = action.errors;
            return Object.assign({}, {errors});
        case CLEAR_ERRORS:
            return {}
        case RECEIVE_CURRENT_USER:
            return {}
        default:
            return state;
    }
}