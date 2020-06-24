import React from 'react';
import { addReview, editReview, deleteReview } from '../../actions/review_actions';
import { connect } from 'react-redux';
// import SigninForm from './signin_form';
import { signUp, signIn, signOut, clearErrors } from '../../actions/session_actions';
import ReviewForm from './review_form';

const mapStateToProps = (state, ownProps) => ({
    currentUser: state.session.currentUserId,
    // product: state.product,
    errors: [state.errors.session.errors],
});

const mapDispatchToProps = (dispatch) => ({
    addReview: (review) => dispatch(addReview(review)),
    editReview: (review) => dispatch(editReview(review)),
    deleteReview: (review) => dispatch(deleteReview(review)),
    clearErrors: () => dispatch(clearErrors())
});

// export default connect(mapStateToProps, mapDispatchToProps)(SigninForm)
export default connect(mapStateToProps, mapDispatchToProps)(ReviewForm)