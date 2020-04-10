import React from 'react';
// import {  withRouter } from 'react-router-dom';
import { Link } from "react-router-dom";

// Props - takes in a product, will render bite-sized info + picture

class ProductCard extends React.Component {
    constructor(props) {
        super(props);
        // this.handleClick = this.handleClick.bind(this);
    }

    getName(name){
        return name.length <= 25 ? name : (name.slice(0,25) +'...')
    }

    render() {
        if (!this.props.product) return null;
        if (!this.props.product.price) return null;
        if (!this.props.product.photoUrls) return null;
        
        const product = this.props.product;
        const price = (new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(this.props.product.price));
        
        // if (!product) return null;
      
        return (
            <Link to={`/products/${product.id}`}>
                <img className='product-card-image' src={this.props.product.photoUrls[0]}/>
                <p>{this.getName(this.props.product.name)}</p>
                <p className='product-card-price'> {price} {parseInt(this.props.product.price) > 15.0 ? <span className='bestseller'>Best seller</span> : null}</p> 
                {/* {parseInt(this.props.product.price) > 15.0 ? <p className='bestseller'>Best seller</p> : null} */}
            </Link >
        )
    }
}

export default ProductCard;