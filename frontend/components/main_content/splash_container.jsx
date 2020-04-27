import React from 'react';
import Splash from './splash';
import { connect } from 'react-redux';
import {fetchProducts, fetchSplashProducts, receiveSplashProducts, clearProducts} from '../../actions/product_actions';


const mapStateToProps = (state, ownProps) => ({
    products: Object.values(state.entities.products)
})

const mapDispatchToProps = dispatch => ({
    fetchProducts: () => dispatch(fetchProducts()),
    fetchSplashProducts: () => dispatch(fetchSplashProducts()),
    receiveSplashProducts: products => dispatch(receiveSplashProducts(products)),
    clearProducts: () => dispatch(clearProducts())
})


export default connect(mapStateToProps, mapDispatchToProps)(Splash);