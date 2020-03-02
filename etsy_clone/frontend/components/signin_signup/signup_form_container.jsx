import React from 'react';
import { signUp } from '../../actions/session_actions';
import { connect } from 'react-redux';
import SessionForm from './session_form';


const mapStateToProps = (state, ownProps) => ({
    currentUser: state.session.currentUser,
    errors: [state.errors.session.errors],
    formType: `Sign up`
});

const mapDispatchToProps = (dispatch, ownProps) => ({
    processForm: (id) => dispatch(signUp(id))
});

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm)