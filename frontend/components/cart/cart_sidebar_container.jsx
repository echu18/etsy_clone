import React from 'react';
import {connect} from 'react-redux';
import {addCartItem} from '../../actions/cart_item_actions';
import CartSidebar from './cart_sidebar';


const mapStateToProps = (state, ownProps) => ({
    // products: state.entities.products,
    currentUser: state.session.currentUser
})


const mapDispatchToProps = (dispatch) => ({
    addCartItem: (userId, productId, quantity) => dispatch(addCartItem(userId, productId, quantity))
})



export default connect(mapStateToProps, mapDispatchToProps)(CartSidebar);