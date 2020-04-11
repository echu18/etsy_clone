import { getProducts, getProduct, queryProducts } from '../util/product_api_util';

export const RECEIVE_PRODUCTS = 'RECEIVE_PRODUCTS';
export const RECEIVE_SPLASH_PRODUCTS = 'RECEIVE_SPLASH_PRODUCTS';
export const RECEIVE_PRODUCT = 'RECEIVE_PRODUCT';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';
export const CLEAR_PRODUCTS = 'CLEAR_PRODUCTS';


export const receiveProducts = products => ({
    type: RECEIVE_PRODUCTS,
    products
})

export const receiveSplashProducts = products => ({
    type: RECEIVE_SPLASH_PRODUCTS,
    products
})

const receiveProduct = payload => ({
    type: RECEIVE_PRODUCT,
    payload
});

// const receiveProduct = product => ({
//     type: RECEIVE_PRODUCT,
//     product
// });

const receiveErrors = errors => ({
    type: RECEIVE_ERRORS,
    errors
})


const removeProducts = () => ({
    type: CLEAR_PRODUCTS
})



export const fetchProducts = () => dispatch => getProducts()
    .then(products => dispatch(receiveProducts(products)),
        error => dispatch(receiveErrors(error.responseJSON)))

export const searchProducts = (query) => dispatch => queryProducts(query)
    .then(products => dispatch(receiveProducts(products)),
        error => dispatch(receiveErrors(error.responseJSON)))


export const fetchSplashProducts = () => dispatch => getProducts()
    .then(products => dispatch(receiveSplashProducts(products)),
        error => dispatch(receiveErrors(error.responseJSON)))


export const fetchProduct = (id) => dispatch => getProduct(id)
    .then(product => dispatch(receiveProduct(product)),
        error => dispatch(receiveErrors(error.responseJSON)))


export const clearProducts = () => dispatch => dispatch(removeProducts())
