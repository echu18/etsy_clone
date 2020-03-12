import {signup, signin, signout} from '../util/session_api_util';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const LOGOUT_CURRENT_USER = 'LOGOUT_CURRENT_USER';
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS';
export const CLEAR_ERRORS = 'CLEAR_ERRORS';

const receiveCurrentUser = payload => ({
    type: RECEIVE_CURRENT_USER,
    payload
});
// const receiveCurrentUser = currentUser => ({
//     type: RECEIVE_CURRENT_USER,
//     currentUser
// });

const signoutCurrentUser = () => ({
    type: LOGOUT_CURRENT_USER
})

const receiveErrors = errors => ({
    type: RECEIVE_SESSION_ERRORS,
    errors
})

const removeErrors = () =>({
    type: CLEAR_ERRORS
})


export const signUp = user => dispatch => signup(user) 
    .then(user => dispatch(receiveCurrentUser(user)),
    error => dispatch(receiveErrors(error.responseJSON)))

export const signIn = user => dispatch => signin(user)
    .then(user => dispatch(receiveCurrentUser(user)),
    error => dispatch(receiveErrors(error.responseJSON)))

export const signOut = () => dispatch => signout() 
    .then(() => dispatch(signoutCurrentUser()))

export const clearErrors = () => dispatch => dispatch(removeErrors())
