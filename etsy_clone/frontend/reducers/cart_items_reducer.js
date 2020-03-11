import {RECEIVE_CART_ITEM, RECEIVE_CART_ITEMS} from '../actions/cart_item_actions'


export default (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_CART_ITEMS:
            const cartItems = {}
            action.cartItems.forEach(cartItem => {
                return cartItems[cartItem.id] = cartItem;
            });
            return cartItems
        case RECEIVE_CART_ITEM:
            return Object.assign({}, state, action.cartItem)
        default:
            return state

    }
}