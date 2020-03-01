import React from 'react';
import Navbar from './navbar';
import { signUp, signIn, signOut } from '../../actions/session_actions';
import { connect } from 'react-redux';

const mapStateToProps = (state, ownProps) => ({
    currentUser: state.session.currentUser
})


const mapDispatchToProps = dispatch => ({
    signUp: id => dispatch(signUp(id)),
    signIn: id => dispatch(signIn(id)),
    signOut: () => dispatch(signOut())
})

export default connect(mapStateToProps, mapDispatchToProps)(Navbar);