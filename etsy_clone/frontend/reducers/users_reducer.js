import { RECEIVE_CURRENT_USER } from '../actions/session_actions';
import { RECEIVE_USER} from '../actions/user_actions';
import {RECEIVE_PRODUCT} from '../actions/product_actions';

export default (state={}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_CURRENT_USER:
            const current_user = action.current_user
            return Object.assign({}, state, {[current_user.id]: current_user})
        case RECEIVE_USER:
            return Object.assign({}, state, { [action.user.id]: action.user })
        // case RECEIVE_ALL_USERS:
        //     return Object.assign({}. oldState, action.users)
        case RECEIVE_PRODUCT:
            return Object.assign({}, state, action.payload.users)
        default:
            return state;
    }
}