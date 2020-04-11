import { RECEIVE_PRODUCTS, RECEIVE_PRODUCT, RECEIVE_SPLASH_PRODUCTS, CLEAR_PRODUCTS } from '../actions/product_actions';
import { RECEIVE_CART_ITEM, RECEIVE_CART_ITEMS } from '../actions/cart_item_actions'
import { RECEIVE_CURRENT_USER } from '../actions/session_actions'


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
        case RECEIVE_SPLASH_PRODUCTS:
            const splashProducts = {}

            for (let i=0; i < 25; i++){
                splashProducts[action.products[i].id] = action.products[i]
            }

            // action.products.forEach(product => {
            //     return splashProducts[product.id] = product;
            // });
            return splashProducts;
            // return action.payload.products
        case CLEAR_PRODUCTS:
            return {}
        case RECEIVE_PRODUCT:
            return Object.assign({}, state, action.payload.products)
            
        case RECEIVE_CART_ITEMS:
            return Object.assign({}, state, action.payload.products)
        case RECEIVE_CURRENT_USER:
            return Object.assign({}, state, action.payload.products)
        default:
            return state
    }
}