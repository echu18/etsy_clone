import {getUser, getAllUsers } from '../util/user_api_util';

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

export const fetchUsers = () => dispatch => getAllUsers()
    .then(users => dispatch(receiveUsers(users)))

export const fetchUser = (id) => dispatch => getUser(id)
    .then(user => dispatch(receiveUser(user)))
