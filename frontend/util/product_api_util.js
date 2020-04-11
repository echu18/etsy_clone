export const getProducts = () => {
    return $.ajax({
        url: `/api/products`,
        method: 'GET'
    })
}

export const queryProducts = (query) => {
    return $.ajax({
        url: `/api/search/`,
        method: 'GET',
        data: {search: query},
        success: function (data) {
            if (data.errors){
                res.send(data.errors)
            }
        }
    })
}

export const getProduct = productId => {
    return $.ajax({
        url: `/api/products/${productId}`,
        method: 'GET'
    })
}

