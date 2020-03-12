import {RECEIVE_CART_ITEM, RECEIVE_CART_ITEMS, CLEAR_CART_ITEMS} from '../actions/cart_item_actions';
import {RECEIVE_CURRENT_USER} from '../actions/session_actions'


export default (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_CART_ITEMS:
            // const cartItems = {}
            // action.cartItems.forEach(cartItem => {
            //     return cartItems[cartItem.id] = cartItem;
            // });
            // return cartItems
            return Object.assign({}, state, action.payload.cartItems)

        case RECEIVE_CART_ITEM:
            return Object.assign({}, state, action.cartItem)
            
        case RECEIVE_CURRENT_USER:
            // debugger
            return Object.assign({}, state, action.payload.cartItems)
        case CLEAR_CART_ITEMS:
            return {}
        default:
            return state
    }
}