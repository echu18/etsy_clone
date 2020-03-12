import { RECEIVE_CURRENT_USER, LOGOUT_CURRENT_USER, RECEIVE_SESSION_ERRORS}  from '../actions/session_actions';

const _nullSession = {
    id: null
};

export default (state = _nullSession, action) => {
    Object.freeze(state)
    switch(action.type) {
        case RECEIVE_CURRENT_USER:
            // debugger 
            // const currentUser = action.currentUser;
            // const currentUser = action.currentUser;
            // return Object.assign({}, {currentUser: currentUser});
            // return Object.assign({}, state, {currentUserId: action.payload.currentUser});
            const currentUser = action.payload.currentUser
            // debugger
            return Object.assign({}, state, {currentUserId: currentUser.id});
        case LOGOUT_CURRENT_USER:
            return _nullSession;
        default: 
            return state;
    }
};