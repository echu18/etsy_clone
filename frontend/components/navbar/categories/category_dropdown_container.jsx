import React from 'react';
import CategoryDropdown from './category_dropdown';
import { connect } from 'react-redux';
import { searchProducts } from '../../../actions/product_actions'

// import { signUp, signIn, signOut, clearErrors } from '../../actions/session_actions';




const mapStateToProps = (state, ownProps) => ({
// map headers, text, subcat titles
    // header: this.state.header
    products: state.entities.products,
    currentUserId: state.session.currentUserId
})


const mapDispatchToProps = dispatch => ({
    searchProducts: query => dispatch(searchProducts(query))
})

export default connect(mapStateToProps, mapDispatchToProps)(CategoryDropdown)


