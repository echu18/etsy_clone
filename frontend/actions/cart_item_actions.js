import { getCartItem, getCartItems, createCartItem, modifyCartItem, destroyCartItem } from '../util/cart_item_api_util';

export const RECEIVE_CART_ITEMS = 'RECEIVE_CART_ITEMS';
export const RECEIVE_CART_ITEM_PRODUCTS = 'RECEIVE_CART_ITEM_PRODUCTS';
export const UPDATE_CART_ITEMS = 'UPDATE_CART_ITEMS';
export const RECEIVE_CART_ITEM = 'RECEIVE_CART_ITEM';
export const ADD_CART_ITEM = 'ADD_CART_ITEM';
export const EDIT_CART_ITEM = 'EDIT_CART_ITEM';
export const DELETE_CART_ITEM = 'DELETE_CART_ITEM';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';
export const CLEAR_CART_ITEMS = 'CLEAR_CART_ITEMS';
export const CLEAR_CART_ITEM = 'CLEAR_CART_ITEM';


const receiveCartItems = payload => ({
    type: RECEIVE_CART_ITEMS,
    payload
});

const receiveCartItemProducts = payload => ({
    type: RECEIVE_CART_ITEM_PRODUCTS,
    payload
});

const updateCartItems = payload => ({
    type: UPDATE_CART_ITEMS,
    payload
});

const receiveCartItem = cartItem => ({
    type: RECEIVE_CART_ITEM,
    cartItem
})

const receiveErrors = errors => ({
    type: RECEIVE_ERRORS,
    errors
})

// const removeCartItem = (cartItem) => ({
//     type: CLEAR_CART_ITEM,
//     cartItem
// })

const removeCartItems = () => ({
    type: CLEAR_CART_ITEMS
})


export const fetchCartItems = () => dispatch => getCartItems()
    .then(cartItems => dispatch(receiveCartItems(cartItems)),
        error => dispatch(receiveErrors(error.responseJSON)))

export const fetchCartItemProducts = () => dispatch => getCartItems()
    .then(cartItems => dispatch(receiveCartItemProducts(cartItems)),
        error => dispatch(receiveErrors(error.responseJSON)))

// export const fetchCartItem = (userId, cartItemId) => dispatch => getCartItem(userId, cartItemId)
//     .then(cartItem => dispatch(receiveCartItem(cartItem)),
//         error => dispatch(receiveErrors(error.responseJSON)))



export const addCartItem = (data) => dispatch => createCartItem(data)
    .then(cartItems => dispatch(receiveCartItems(cartItems)),
        error => dispatch(receiveErrors(error.responseJSON)))


export const editCartItem = (cartItemId, cart_item) => dispatch => modifyCartItem(cartItemId, cart_item)
    .then(cartItems => dispatch(receiveCartItems(cartItems)),
        error => dispatch(receiveErrors(error.responseJSON)))


export const deleteCartItem = (cartItemId) => dispatch => destroyCartItem(cartItemId)
        .then(cartItems => dispatch(receiveCartItems(cartItems)));

export const clearCartItems = () => dispatch => dispatch(removeCartItems())
