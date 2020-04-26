import CartSidebarContainer from '../components/cart/cart_sidebar_container';


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
    debugger
    return $.ajax({
        url: `/api/cart_items`,
        method: 'POST',
        data: { cart_item }
    })

}

// export const modifyCartItem = (userId, data) => {
//     return $.ajax({
//         url: `/api/users/${userId}/cart_items`,
//         method: 'PATCH',
//         data: {data}
//     })
// }

export const modifyCartItem = (cartItemId, cart_item) => {
  return $.ajax({
    url: `/api/cart_items/${cartItemId}`,
    method: "PATCH",
    data: { cart_item }
  });
};




// export const destroyCartItem = (userId, cartItemId) => {
//     return $.ajax({
//         url: `/api/users/${userId}/cart_items/${cartItemId}`,
//         method: 'DELETE',
//         data: {cartItemId}
//     })
// }

export const destroyCartItem = (cartItemId) => {
        return $.ajax({
        url: `/api/cart_items/${cartItemId}`,
        method: "DELETE"
        });
    };
