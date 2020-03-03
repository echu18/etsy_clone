import React from 'react';
import Navbar from './navbar';
import { signUp, signIn, signOut, clearErrors } from '../../actions/session_actions';
import { connect } from 'react-redux';

const mapStateToProps = (state, ownProps) => ({
    currentUser: state.session.currentUser
})


const mapDispatchToProps = dispatch => ({
    signUp: id => dispatch(signUp(id)),
    signIn: id => dispatch(signIn(id)),
    signOut: () => dispatch(signOut()),
    clearErrors: () => dispatch(clearErrors())
})

export default connect(mapStateToProps, mapDispatchToProps)(Navbar);