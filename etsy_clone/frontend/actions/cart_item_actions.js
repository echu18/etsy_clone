import { getCartItem, getCartItems, createCartItem, modifyCartItem, destroyCartItem } from '../util/cart_item_api_util';


export const RECEIVE_CART_ITEMS = 'RECEIVE_CART_ITEMS';
export const RECEIVE_CART_ITEM = 'RECEIVE_CART_ITEM';
export const ADD_CART_ITEM = 'ADD_CART_ITEM';
export const EDIT_CART_ITEM = 'EDIT_CART_ITEM';
export const DELETE_CART_ITEM = 'DELETE_CART_ITEM';


const receiveCartItems = cartItems => ({
    type: RECEIVE_CART_ITEMS,
    cartItems
});

const receiveCartItem = cartItem => ({
    type: RECEIVE_CART_ITEM,
    cartItem
})



export const fetchCartItems = (userId) => dispatch => getCartItems(userId)
    .then(cartItems => dispatch(receiveCartItems(cartItems)),
        error => dispatch(receiveErrors(error.responseJSON)))


export const fetchCartItem = (userId, cartItemId) => dispatch => getCartItem(userId, cartItemId)
    .then(cartItem => dispatch(receiveCartItem(cartItem)),
        error => dispatch(receiveErrors(error.responseJSON)))



export const addCartItem = (userId, productId) => dispatch => createCartItem(userId, productId)
    .then(cartItem => dispatch(receiveCartItem(cartItem)),
        error => dispatch(receiveErrors(error.responseJSON)))


export const editCartItem = (userId, cartItemId) => dispatch => modifyCartItem(userId, cartItemId)
    .then(cartItem => dispatch(receiveCartItem(cartItem)),
        error => dispatch(receiveErrors(error.responseJSON)))


export const deleteCartItem = (userId, cartItemId) => dispatch => destroyCartItem(userId, cartItemId)
        .then(cartItem => dispatch(receiveCartItem(cartItem)));

