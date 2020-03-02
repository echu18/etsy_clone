import React from 'react';
import { signIn, signOut } from '../../actions/session_actions';
import { connect } from 'react-redux';
import SessionForm from './session_form';

const mapStateToProps = (state, ownProps) => ({
    currentUser: state.session.currentUser,
    errors: [state.errors.session.errors],
    formType: `Sign in`
});

const mapDispatchToProps = (dispatch, ownProps) => ({
    processForm: (id) => dispatch(signIn(id))
});

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm)