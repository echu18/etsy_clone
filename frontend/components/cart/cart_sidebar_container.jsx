import React from 'react';
import {connect} from 'react-redux';
import {addCartItem} from '../../actions/cart_item_actions';
import { signUp, signIn, signOut, clearErrors } from '../../actions/session_actions';
import CartSidebar from './cart_sidebar';


const mapStateToProps = (state, ownProps) => ({
    // products: state.entities.products,
    cartItems: state.entities.cartItems,
    currentUserId: state.session.currentUserId
})


const mapDispatchToProps = (dispatch) => ({
    addCartItem: (userId, productId, quantity) => dispatch(addCartItem(userId, productId, quantity)),
    clearErrors: () => dispatch(clearErrors())
})



export default connect(mapStateToProps, mapDispatchToProps)(CartSidebar);