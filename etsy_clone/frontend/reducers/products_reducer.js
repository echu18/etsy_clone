import { RECEIVE_PRODUCTS, RECEIVE_PRODUCT } from '../actions/product_actions';
import { RECEIVE_CART_ITEM, RECEIVE_CART_ITEMS } from '../actions/cart_item_actions'


export default (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_PRODUCTS:
            const products = {}
            action.products.forEach(product => {
                return products[product.id] = product;
            });
            return products
            // return action.payload.products
        case RECEIVE_PRODUCT:
            return Object.assign({}, state, action.payload.products)
        default:
            return state
    }
}