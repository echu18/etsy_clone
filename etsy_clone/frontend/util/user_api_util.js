export const getUser = userId => {
    return $.ajax({
        url: `/api/users/${userId}`,
        method: 'GET'
    })
}

export const getAllUsers = () => {
    return $.ajax({
        url: `/api/users/`,
        method: 'GET'
    })
}