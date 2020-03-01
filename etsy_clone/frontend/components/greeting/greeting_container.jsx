import React from 'react';
import Greeting from './greeting';
import { signUp, logIn, logOut } from '../../actions/session_actions';
import { connect } from 'react-redux';

const mapStateToProps = (state) => ({
    currentUser: state.session.currentUser
});

const mapDispatchToProps = (dispatch) => ({
    signUp: id => dispatch(signUp(id)),
    logIn: id => dispatch(logIn(id)),
    logOut: () => dispatch(logOut())
});

export default connect(mapStateToProps, mapDispatchToProps)(Greeting)