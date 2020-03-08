import React from 'react';
import Splash from './splash';
import { connect } from 'react-redux';


const mapStateToProps = (state, ownProps) => ({
    products: Object.values(state.entities.products)
})

const mapDispatchToProps = dispatch => ({
    fetchProducts: () => dispatch(fetchProducts()),
    // fetchProduct: id => dispatch(fetchProduct(id))
})


export default connect(mapStateToProps, mapDispatchToProps)(Splash);