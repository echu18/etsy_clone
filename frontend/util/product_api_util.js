export const getProducts = () => {
    return $.ajax({
        url: `/api/products`,
        method: 'GET'
    })
}

export const queryProducts = (query) => {
    debugger
    return $.ajax({
        url: `/api/products/search/`,
        method: 'GET',
        search: query
    })
}

export const getProduct = productId => {
    return $.ajax({
        url: `/api/products/${productId}`,
        method: 'GET'
    })
}

