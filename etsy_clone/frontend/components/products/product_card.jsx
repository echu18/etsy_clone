import React from 'react';
// import { } from '

// Props - takes in a product, will render bite-sized info + picture

class ProductCard extends React.Component {
    constructor(props) {
        super(props);
        // this.state = {
            
        // }
    }

    render() {
        const product = this.props.product;
        const price = (new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(this.props.product.price));

        if (!product) return null;
        // console.log(Array.from(product.photoUrls))
        return (
            <div>
                <img className='product-card-image' src={Array.from(product.photoUrls)[0]}/>
                <p className='product-card-price'> {price}</p>
            </div>
        )
    }
}

export default ProductCard;