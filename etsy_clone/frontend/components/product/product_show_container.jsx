import React from 'react'
import { connect } from 'react-redux';
import { fetchProducts, fetchProduct } from '../../actions/product_actions'
import ProductShow from './product_show';


const mapStateToProps = (state, ownProps) => ({
    product: state.entities.products[ownProps.match.params.productId],
    users: state.entities.users
})

const mapDispatchToProps = dispatch => ({
    fetchProducts: () => dispatch(fetchProducts()),
    fetchProduct: id => dispatch(fetchProduct(id))
})

export default connect(mapStateToProps, mapDispatchToProps)(ProductShow);