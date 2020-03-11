import React from 'react'
import { connect } from 'react-redux';
import { fetchProducts, fetchProduct } from '../../actions/product_actions';
import { clearReviews } from '../../actions/review_actions';
import ProductShow from './product_show';


const mapStateToProps = (state, ownProps) => ({
    product: state.entities.products[ownProps.match.params.productId],
    reviews: state.entities.reviews,
    users: state.entities.users
})

const mapDispatchToProps = dispatch => ({
    fetchProducts: () => dispatch(fetchProducts()),
    fetchProduct: id => dispatch(fetchProduct(id)),
    clearReviews: () => dispatch(clearReviews())
})

export default connect(mapStateToProps, mapDispatchToProps)(ProductShow);