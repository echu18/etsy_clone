import { RECEIVE_CURRENT_USER } from '../actions/session_actions';
import { RECEIVE_PRODUCTS, RECEIVE_PRODUCT } from '../actions/product_actions';
import { RECEIVE_REVIEW } from '../actions/review_actions';


export default (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_CURRENT_USER:
            // const user = action.currentUser
            // return Object.assign({}, state, { [user.id]: user })
            return Object.assign({}, state, action.payload.users )
        case RECEIVE_REVIEW:
            return Object.assign({},state, action.payload.authors)
        case RECEIVE_PRODUCT: 
            debugger
            return Object.assign({}, state, action.payload.users)
        default:
            return state;

    }
}