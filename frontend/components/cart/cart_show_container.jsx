import React from 'react';
import {fetchCartItems, fetchCartItem, addCartItem, editCartItem, deleteCartItem, clearCartItems} from '../../actions/cart_item_actions';
// import {cur} from '../../actions/user_actions';
import CartShow from './cart_show';
import { connect } from 'react-redux';


const mapStateToProps = (state, ownProps) => ({
    products: state.entities.products,
    cartItems: Object.values(state.entities.cartItems),
    currentUserId: state.session.currentUserId
})


const mapDispatchToProps = (dispatch) => ({
    fetchCartItems: () => dispatch(fetchCartItems()),
    clearCartItems: () => dispatch(clearCartItems()),
    addCartItem: (userId, productId, quantity) => dispatch(addCartItem(userId, productId, quantity)),
    editCartItem: (userId, cartItemId) => dispatch(editCartItem(userId, cartItemId)),
    deleteCartItem: (userId, cartItemId) => dispatch(deleteCartItem(userId, cartItemId)),
})



export default connect(mapStateToProps, mapDispatchToProps)(CartShow);