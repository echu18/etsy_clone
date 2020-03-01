import React from 'react';
import { logIn, logOut } from '../../actions/session_actions';
import { connect } from 'react-redux';
import SessionForm from './session_form';

const mapStateToProps = (state, ownProps) => ({
    currentUser: state.session.currentUser,
    errors: [state.errors.session.errors],
    formType: `Log In`
});

const mapDispatchToProps = (dispatch, ownProps) => ({
    processForm: (id) => dispatch(logIn(id))
});

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm)