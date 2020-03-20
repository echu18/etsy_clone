import {getUser, getUsers } from '../util/user_api_util';

export const RECEIVE_USER = 'RECEIVE_USER';
export const RECEIVE_USERS = 'RECEIVE_USERS';

const receiveUsers = users => ({
    type: RECEIVE_USERS,
    users
})

const receiveUser = user => ({
    type: RECEIVE_USER,
    user
})

export const fetchUsers = () => dispatch => getUsers()
    .then(users => dispatch(receiveUsers(users)),
        error => dispatch(receiveErrors(error.responseJSON)))

export const fetchUser = (id) => dispatch => getUser(id)
    .then(user => dispatch(receiveUser(user)),
        error => dispatch(receiveErrors(error.responseJSON)))

