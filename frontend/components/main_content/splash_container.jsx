import React from 'react';
import Splash from './splash';
import { connect } from 'react-redux';
import {fetchProducts, fetchSplashProducts} from '../../actions/product_actions';


const mapStateToProps = (state, ownProps) => ({
    products: Object.values(state.entities.products)
})

const mapDispatchToProps = dispatch => ({
    fetchProducts: () => dispatch(fetchProducts()),
    fetchSplashProducts: () => dispatch(fetchSplashProducts())
})


export default connect(mapStateToProps, mapDispatchToProps)(Splash);