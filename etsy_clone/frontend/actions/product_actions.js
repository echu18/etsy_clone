import {getProducts, getProduct} from '../util/product_api_util';
import {fetchUser} from '../actions/user_actions'

export const RECEIVE_PRODUCTS = 'RECEIVE_PRODUCTS';
export const RECEIVE_PRODUCT = 'RECEIVE_PRODUCT';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

export const RECEIVE_PRODUCT_SELLER = 'RECEIVE_PRODUCT_SELLER';


const receiveProducts = products => ({
    type: RECEIVE_PRODUCTS,
    products
})

const receiveProduct = payload => ({
    type: RECEIVE_PRODUCT,
    payload
});

const receiveErrors = errors => ({
    type: RECEIVE_ERRORS,
    errors
})



export const fetchProducts = () => dispatch => getProducts()
    .then(products => dispatch(receiveProducts(products)),
    error => dispatch(receiveErrors(error.responseJSON)))


export const fetchProduct = (id) => dispatch => getProduct(id)
    .then(product => dispatch(receiveProduct(product)),
        error => dispatch(receiveErrors(error.responseJSON)))
