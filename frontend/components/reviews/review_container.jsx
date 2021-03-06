import React from 'react'
import { connect } from 'react-redux';
import {fetchUser, fetchUsers} from '../../actions/user_actions';
import { fetchReviews, fetchReview, editReview, deleteReview} from '../../actions/review_actions';
import Review from './review';


const mapStateToProps = (state, ownProps) => ({
    // product: state.entities.products[ownProps.match.params.productId],
    // users: Array.from(state.entities.users),
    currentUserId: state.session.currentUserId,
    users: state.entities.users,
    reviews: Array.from(state.entities.reviews)
})

const mapDispatchToProps = dispatch => ({
    // fetchUsers: () => dispatch(fetchUsers()),
    // fetchUser: id => dispatch(fetchUser(id))
    fetchReviews: (productId) => dispatch(fetchReviews(productId)),
    deleteReview: (reviewId) => dispatch(deleteReview(reviewId)),
    editReview: (reviewId, review) => dispatch(editReview(reviewId, review)),
    fetchUser: id => dispatch(fetchUser(id))
})

export default connect(mapStateToProps, mapDispatchToProps)(Review);