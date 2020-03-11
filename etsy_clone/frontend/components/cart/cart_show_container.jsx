import React from 'react';
import {fetchCartItems, fetchCartItem, addCartItem, editCartItem, deleteCartItem} from '../../actions/cart_item_actions';
import CartShow from './cart_show';
import { connect } from 'react-redux';


const mapStateToProps = (state, ownProps) => ({
    product: state.entities.products[ownProps.match.params.productId],
    reviews: state.entities.reviews,
    users: state.entities.users,
    currentUser: state.session.currentUser
})


const mapDispatchToProps = (dispatch) => ({
    fetchCartItems: (userId) => dispatch(fetchCartItems(userId)),
    fetchCartItem: (userId, cartItemId) => dispatch(fetchCartItem(userId, cartItemId)),
    addCartItem: (userId, productId) => dispatch(addCartItem(userId, productId)),
    editCartItem: (userId, cartItemId) => dispatch(editCartItem(userId, cartItemId)),
    deleteCartItem: (userId, cartItemId) => dispatch(deleteCartItem(userId, cartItemId)),
})



export default connect(mapStateToProps, mapDispatchToProps)(CartShow);