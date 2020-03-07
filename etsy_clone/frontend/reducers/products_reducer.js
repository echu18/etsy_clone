import { RECEIVE_PRODUCTS, RECEIVE_PRODUCT, RECEIVE_PRODUCT_SELLER } from '../actions/product_actions';

const productsReducer = (state={}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_PRODUCTS:
            const products = {}
                action.products.forEach(product => {
                    products[product.id] = product;
                });
            return products
        case RECEIVE_PRODUCT:
            // const product = action.payload.products
            const product = action.product
            return Object.assign({}, state, product)
        default:
            return state
    }
}

export default productsReducer;