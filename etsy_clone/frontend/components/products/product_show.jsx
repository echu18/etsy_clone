import React from 'react';
// import ProductImageContainer from './product_image_container';
import ProductImage from './product_image';
import ReviewContainer from '../reviews/review_container.jsx';


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
                <div className='image-and-sidebar'>
                    <ProductImage urls={urls} product={this.props.product} {...this.props} />

                    <div className='product-sidebar'>
                        <div className='product-text'>
                            <p className='product-name'>{name}</p>
                            <p className='product-price'>${price}</p>

                            


                            <p className='product-description'>{description}</p>
                            {/* <p className='product-category'>{category}</p> */}

                    
                            <div className='seller-info-container'>
                                <h3>Meet your seller</h3>

                                <div className='seller-photo-text-container'>
                                    <img src={sellerPhotoUrl} />
                                    <div className='seller-info'>
                                        <h2>{this.props.users[sellerId].username}</h2>
                                        <p>Owner of {' '}{this.props.users[sellerId].store_name}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                // Render multiple product review containers
                // Grab the ~ 7 most recent reviews, iterate thru each and pass props to ReviewContainer for render 
                {/* <ReviewContainer /> */}


                
                <div className='all-reviews-container'>
                    
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