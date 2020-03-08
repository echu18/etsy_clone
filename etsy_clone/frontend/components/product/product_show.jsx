import React from 'react';
import ProductImageContainer from './product_image_container';


class ProductShow extends React.Component {
    componentDidMount() {
        this.props.fetchProduct(this.props.match.params.productId)
    }

    render() {
        if (this.props.product === undefined) return null;

        const { name, description, price, category, photoUrls } = this.props.product;
        const urls = Array.from(photoUrls)
        const sellerId = this.props.product.seller_id;
        const sellerPhotoUrl = this.props.users[sellerId].photoUrls[0];


        return (
            <div className='product-listing-container'>
                <ProductImageContainer urls={urls} product={this.props.product} {...this.props} />

                <div className='product-sidebar'>
                    <div className='product-text'>
                        <p className='product-name'>{name}</p>
                        <p className='product-price'>${price}</p>

                        


                        <p className='product-description'>{description}</p>
                        {/* <p className='product-category'>{category}</p> */}

                
                        <div className='seller-info'>
                            <p>{this.props.users[sellerId].username}</p>
                             <img src={sellerPhotoUrl} />
                        </div>
                    </div>
                </div>


               

                {/* <img className='product-photo' src={urls[1]}/> */}
                {/* <div className='product-photos'>
                    {urls.map((url, idx) => {
                        return <img className='product-photo' src={url} key={idx} />
                    })}
                </div> */}
            </div>
        )
    }
}

export default ProductShow;