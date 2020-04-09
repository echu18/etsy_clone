import React from 'react'
import { connect } from 'react-redux';
import { fetchProducts, fetchProduct } from '../../actions/product_actions'
import CatModule from './cat_module';


const mapStateToProps = (state, ownProps) => ({
    // products: Object.values(state.entities.products)
})

const mapDispatchToProps = dispatch => ({
    fetchProducts: () => dispatch(fetchProducts()),
    // fetchProduct: id => dispatch(fetchProduct(id))
})

export default connect(mapStateToProps, mapDispatchToProps)(CatModule);