
// export const getCartItem = (userId, cartItemId) => {
//     return $.ajax({
//         url: `/api/users/${userId}/cart_items/${cartItemId}`,
//         method: 'GET'
//     })
// }

export const getCartItems = () => {
    return $.ajax({
        url: `/api/cart_items`,
        method: 'GET'
    })
}


export const createCartItem = (cart_item) => {
    
    return $.ajax({
        url: `/api/cart_items`,
        method: 'POST',
        data: { cart_item }
    })
}

export const modifyCartItem = (userId, data) => {
    return $.ajax({
        url: `/api/users/${userId}/cart_items`,
        method: 'PATCH',
        data: {data}
    })
}



export const destroyCartItem = (userId, cartItemId) => {
    return $.ajax({
        url: `/api/users/${userId}/cart_items/${cartItemId}`,
        method: 'DELETE',
        data: {cartItemId}
    })
}
