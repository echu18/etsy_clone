import React from 'react'
import { connect } from 'react-redux';
import { fetchProducts, fetchProduct } from '../../actions/product_actions'
import ProductImage from './product_image';


const mapStateToProps = (state, ownProps) => ({
    
})

const mapDispatchToProps = dispatch => ({

})


export default connect(mapStateToProps, mapDispatchToProps)(ProductImage);