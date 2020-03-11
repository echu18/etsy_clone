import React from 'react';
// import {  withRouter } from 'react-router-dom';
import { Link } from "react-router-dom";

// Props - takes in a product, will render bite-sized info + picture

class ProductCard extends React.Component {
    constructor(props) {
        super(props);
        // this.handleClick = this.handleClick.bind(this);
    }


    render() {
        const product = this.props.product;
        const price = (new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(product.price));
        
        if (!product) return null;
      
        return (
            <Link to={`/products/${product.id}`}>
                <img className='product-card-image' src={Array.from(product.photoUrls)[0]}/>
                <p className='product-card-price'> {price}</p>
             </Link >
        )
    }
}

export default ProductCard;