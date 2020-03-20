export const getProducts = () => {
    return $.ajax({
        url: `/api/products`,
        method: 'GET'
    })
}

export const getProduct = productId => {
    return $.ajax({
        url: `/api/products/${productId}`,
        method: 'GET'
    })
}

