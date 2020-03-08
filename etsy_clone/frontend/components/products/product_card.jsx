import React from 'react';
// import { } from '

// Props - takes in a product, will render bite-sized info + picture

class ProductCard extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            
        }

    }

    render() {
        const { product } = this.props;

        return (
            <div className='product-card-container'>
                {/* <img className='product-card-image' src={}/> */}
                <p className='product-card-price'> {product.price}</p>
            </div>
        )
    }
}

export default ProductCard;