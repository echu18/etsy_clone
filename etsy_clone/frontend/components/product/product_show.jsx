import React from 'react';
import ProductImageContainer from './product_image_container';

class ProductShow extends React.Component {
    componentDidMount() {
        this.props.fetchProduct(this.props.match.params.productId)
    }

    render() {
        if (this.props.product === undefined) return null;

        const { name, description, price, category, photoUrls} = this.props.product;
        const urls = Array.from(photoUrls)

        // console.log('photos')
        console.log(this.props.product.seller_id)
        return (
            <div className='product-listing-container'>

                <p className='product-name'>{name}</p>
                <p className='product-description'>{description}</p>
                <p className='product-price'>${price}</p>
                {/* <p className='product-category'>{category}</p> */}

                {/* <div className='seller-info'>
                    <p>{seller.name}</p>
                     <img src={seller.photo}/> 
                </div> */}

        
                {/* <img className='product-photo' src={urls[1]}/> */}
                <ProductImageContainer urls={urls} product={this.props.product} />
            </div>
        )
    }
}

export default ProductShow;

