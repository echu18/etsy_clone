import React from 'react';
import { signUp} from '../../actions/session_actions';
import { connect } from 'react-redux';
// import SignupForm from './signup_form';
import SessionForm from './session_form';



const mapStateToProps = (state, ownProps) => ({
    currentUser: state.session.currentUser,
    errors: [state.errors.session.errors],
    formType: `Sign up`
});

const mapDispatchToProps = (dispatch) => ({
    processForm: (user) => dispatch(signUp(user)),
});

// export default connect(mapStateToProps, mapDispatchToProps)(SignupForm)
export default connect(mapStateToProps, mapDispatchToProps)(SessionForm)