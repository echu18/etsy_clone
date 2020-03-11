import { getProducts, getProduct } from '../util/product_api_util';

export const RECEIVE_PRODUCTS = 'RECEIVE_PRODUCTS';
export const RECEIVE_PRODUCT = 'RECEIVE_PRODUCT';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

const receiveProducts = products => ({
    type: RECEIVE_PRODUCTS,
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

export const fetchProducts = () => dispatch => getProducts()
    .then(products => dispatch(receiveProducts(products)),
        error => dispatch(receiveErrors(error.responseJSON)))


export const fetchProduct = (id) => dispatch => getProduct(id)
    .then(product => dispatch(receiveProduct(product)),
        error => dispatch(receiveErrors(error.responseJSON)))

