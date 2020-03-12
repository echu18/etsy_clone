import React from 'react';
import {fetchCartItems, fetchCartItem, addCartItem, editCartItem, deleteCartItem} from '../../actions/cart_item_actions';
import CartShow from './cart_show';
import { connect } from 'react-redux';


const mapStateToProps = (state, ownProps) => ({
    products: state.entities.products,
    cartItems: Object.values(state.entities.cartItems),
    currentUser: state.session.currentUser
})


const mapDispatchToProps = (dispatch) => ({
    fetchCartItems: () => dispatch(fetchCartItems()),
    addCartItem: (userId, productId, quantity) => dispatch(addCartItem(userId, productId, quantity)),
    editCartItem: (userId, cartItemId) => dispatch(editCartItem(userId, cartItemId)),
    deleteCartItem: (userId, cartItemId) => dispatch(deleteCartItem(userId, cartItemId)),
})



export default connect(mapStateToProps, mapDispatchToProps)(CartShow);