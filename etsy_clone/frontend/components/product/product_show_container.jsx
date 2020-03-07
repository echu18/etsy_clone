import React from 'react'
import { connect } from 'react-redux';
import { fetchProducts, fetchProduct } from '../../actions/product_actions';
import {fetchUser, fetchAllUsers} from '../../actions/user_actions';
import ProductShow from './product_show';


const mapStateToProps = (state, ownProps) => {
    // const product = state.entities.products[ownProps.match.params.productId];
    
    return { 
        product: state.entities.products[ownProps.match.params.productId]
        user: state.user
        // productId: ownProps.match.params.productId,
        // user: state.entities.users[135]
        // products: Object.values(state.entities.products),
        // users: Object.values(state.entities.users)
    };
}

const mapDispatchToProps = dispatch => ({
    // fetchProducts: () => dispatch(fetchProducts()),
    fetchProduct: productId => dispatch(fetchProduct(productId)),
    fetchUser: userId => dispatch(fetchUser(userId))
    // fetchAllUsers: () => dispatch(fetchAllUsers())
})

export default connect(mapStateToProps, mapDispatchToProps)(ProductShow);