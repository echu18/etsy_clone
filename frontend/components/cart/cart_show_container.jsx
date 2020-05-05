import React from 'react';
import {
  fetchCartItems,
  fetchCartItem,
  fetchCartItemProducts,
  addCartItem,
  editCartItem,
  deleteCartItem,
  clearCartItems,
} from "../../actions/cart_item_actions";
// import {cur} from '../../actions/user_actions';
import CartShow from './cart_show';
import { connect } from 'react-redux';


const mapStateToProps = (state, ownProps) => ({
    products: state.entities.products,
    cartItems: Object.values(state.entities.cartItems),
    currentUserId: state.session.currentUserId,
    users: state.entities.users
})


const mapDispatchToProps = (dispatch) => ({
    fetchCartItemProducts: () => dispatch(fetchCartItemProducts()),
    fetchCartItems: () => dispatch(fetchCartItems()),
    clearCartItems: () => dispatch(clearCartItems()),
    addCartItem: (userId, productId, quantity) => dispatch(addCartItem(userId, productId, quantity)),
    editCartItem: (cartItemId, data) => dispatch(editCartItem(cartItemId, data)),
    deleteCartItem: (cartItemId) => dispatch(deleteCartItem(cartItemId)),
})



export default connect(mapStateToProps, mapDispatchToProps)(CartShow);