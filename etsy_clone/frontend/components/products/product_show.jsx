import React from 'react';
// import ProductImageContainer from './product_image_container';
import ProductImage from './product_image';
import ReviewContainer from '../reviews/review_container.jsx';
import { starIcon } from '../../../app/assets/images/svgs/icons'


class ProductShow extends React.Component {
    componentDidMount() {
        this.props.fetchProduct(this.props.match.params.productId)
    }

    render() {
        if (this.props.product === undefined) return null;

        const { name, description, price, category, photoUrls} = this.props.product;
        const urls = Array.from(photoUrls)
        const sellerId = this.props.product.seller_id;
        const sellerPhotoUrl = this.props.users[sellerId].photoUrls[0];
        const reviews = Object.values(this.props.reviews);
        const storeName = this.props.users[sellerId].store_name;
        const stars = [starIcon, starIcon, starIcon, starIcon, starIcon];
        // const starSeq = stars.slice(0, );  // Average rating

        return (
            <div className='product-listing-container'>
                <div className='image-and-sidebar'>
                    <ProductImage urls={urls} product={this.props.product} {...this.props} />

                    <div className='product-sidebar'>
                        <div className='review-sidebar-header'> 
                            {storeName}
                            {/* <div className='mini-stars'>{starSeq}</div> */}
                         </div>


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
                                        <p>Owner of {' '}{storeName}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div className='review-header'>Reviews for this item </div>
                <div className='all-reviews-container' id='main'>
                    {!reviews ? null : (
                        reviews.map((review, idx )=> {
                            return <div className='single-review' key={idx}>
                                        <ReviewContainer review={review} />
                                    </div>
                        }))
                    }
                </div>
            </div>
        )
    }
}

export default ProductShow;