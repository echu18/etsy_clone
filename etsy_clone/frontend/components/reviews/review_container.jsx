import React from 'react'
import { connect } from 'react-redux';
import Review from './review';


const mapStateToProps = (state, ownProps) => ({
    // product: state.entities.products[ownProps.match.params.productId],
    // users: state.entities.users
})

const mapDispatchToProps = dispatch => ({

})

export default connect(mapStateToProps, mapDispatchToProps)(Review);