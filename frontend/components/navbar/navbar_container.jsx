import React from 'react';
import Navbar from './navbar';
import { signUp, signIn, signOut, clearErrors } from '../../actions/session_actions';
import { searchProducts, fetchSplashProducts, clearProducts } from '../../actions/product_actions';
import { connect } from 'react-redux';

const mapStateToProps = (state, ownProps) => ({
    products: state.entities.products,
    currentUserId: state.session.currentUserId,
})


const mapDispatchToProps = dispatch => ({
    searchProducts: query => dispatch(searchProducts(query)),
    clearProducts: () => dispatch(clearProducts()),
    fetchSplashProducts: () => dispatch(fetchSplashProducts()),
    signUp: id => dispatch(signUp(id)),
    signIn: id => dispatch(signIn(id)),
    signOut: () => dispatch(signOut()),
    clearErrors: () => dispatch(clearErrors())
})

export default connect(mapStateToProps, mapDispatchToProps)(Navbar);