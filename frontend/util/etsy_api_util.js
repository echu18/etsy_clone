const keys = require('../../config/keys');




export const getAllEtsyProducts = () => {
    return $.ajax({
      url: `https://openapi.etsy.com/v2/listings/active?api_key=`+ keys.etsyAPI +'?callbackURL=https://localhost:3000',
      method: 'GET'
    
      
    })
      
}


// .then((response) => {
//         return response.data;
//       })
//       .catch((error) => {
//         console.log(error);
//         throw error;
//       });
// export const getProduct = productId => {
//     return $.ajax({
//         url: `/api/products/${productId}`,
//         method: 'GET'
//     })
// }