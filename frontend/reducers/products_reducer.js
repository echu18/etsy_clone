import { RECEIVE_PRODUCTS, RECEIVE_PRODUCT } from '../actions/product_actions';
import { RECEIVE_CART_ITEM, RECEIVE_CART_ITEMS } from '../actions/cart_item_actions'
import { RECEIVE_CURRENT_USER } from '../actions/session_actions'


export default (state = {}, action) => {
    Object.freeze(state);
    // debugger
    switch (action.type) {
        case RECEIVE_PRODUCTS:
            const products = {}
            action.products.forEach(product => {
                return products[product.id] = product;
            });
            return products
            // return action.payload.products
        case RECEIVE_PRODUCT:
            // debugger
            return Object.assign({}, state, action.payload.products)
            
        case RECEIVE_CART_ITEMS:
            // const cartItems = {}
            // Array.from(action.payload.products).forEach(product => {
            //     return cartItems[product.id] = product;
            // });
            // return cartItems;
            return Object.assign({}, state, action.payload.products)
        case RECEIVE_CURRENT_USER:
            return Object.assign({}, state, action.payload.products)
        default:
            return state
    }
}