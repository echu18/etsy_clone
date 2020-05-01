import { RECEIVE_CART_ITEM, RECEIVE_CART_ITEMS, CLEAR_CART_ITEMS, CLEAR_CART_ITEM} from '../actions/cart_item_actions';
import {RECEIVE_CURRENT_USER} from '../actions/session_actions'


export default (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_CART_ITEMS:
            debugger
            const cartItems = {}

            if (!action.payload.cartItems) {
                return cartItems
            } else {
                Object.values(action.payload.cartItems).forEach(cartItem => {
                    return cartItems[cartItem.id] = cartItem;
                });
                return cartItems
            }
            // return Object.assign({}, state, action.payload.cartItems)

        case RECEIVE_CART_ITEM:
            debugger
            return Object.assign({}, state, action.cartItem)
            
        case RECEIVE_CURRENT_USER:
            // debugger
            return Object.assign({}, state, action.payload.cartItems)
        case CLEAR_CART_ITEM:
            debugger
            const remainingCartItems = Object.entries(state).filter(cartItem => cartItem != action.cartItem)
            return Object.assign({}, remainingCartItems)
        case CLEAR_CART_ITEMS:
            return {}
        default:
            return state
    }
}