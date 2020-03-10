import React from 'react';
// import ProductImageContainer from './product_image_container';
import ProductImage from './product_image';
import ReviewContainer from '../reviews/review_container.jsx';
import CartSidebarContainer from '../cart/cart_sidebar_container';
import { starIcon, rightArrow, memesyLogo } from '../../../app/assets/images/svgs/icons'


class ProductShow extends React.Component {
    componentDidMount() {
        this.props.fetchProduct(this.props.match.params.productId)
    }

    // getAllReviews(num) {
    //     if (!reviews) {
    //         return null;
    //     } else {
    //         reviewArr = reviews.map((review, idx) => {
    //             return <div className='single-review' key={idx}>
    //                 <ReviewContainer review={review} />
    //             </div>
    //         })
    //     }
    //     return reviewArr;
    // }

    render() {
        if (this.props.product === undefined) return null;

        const { name, description, category, photoUrls} = this.props.product;
        const price = (new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(this.props.product.price));
        const urls = Array.from(photoUrls);
        const sellerId = this.props.product.seller_id;
        const seller = this.props.users[sellerId];
        const sellerPhotoUrl = this.props.users[sellerId].photoUrls[0];
        const reviews = Object.values(this.props.reviews);
        const storeName = this.props.users[sellerId].store_name;
        const stars = [starIcon, starIcon, starIcon, starIcon, starIcon];
        const starSeq = stars.slice(0, this.props.product.avg_rating);  // Average rating
        

        

        return (
            <div className='product-listing-container'>
                <div className='image-and-sidebar'>
                    <ProductImage urls={urls} product={this.props.product} {...this.props} />

                    <div className='product-sidebar'>
                        <div className='review-sidebar-header'> 
                            {!storeName ? <p>{seller.username}'s Store</p>: storeName }
                            <div className='mini-stars'>{starSeq}</div>
                            <p className='review-count'>( {reviews ? reviews.length : null} )</p>
                         </div>

                        <div className='product-text'>
                            <p className='product-name'>{name}</p>
                            <p className='product-price'>{price}</p>

                            <CartSidebarContainer className='cart-sidebar-container'/>
                            

                            <div className='product-description-container'>
                                <div className='description-transparent-overlay'> </div>

                                <label>Description</label>
                                <p className='product-description-text'>{description}</p>
                            </div>

                                {/* <p className='product-category'>{category}</p> */}

                                {/* Shop rating, total shop reviews */}

                            <button className='faqs-btn'>FAQs {rightArrow}</button>
                            <div className='seller-info-container'>
                                <h3>Meet your seller</h3>

                                <div className='seller-photo-text-container'>

                                    { !sellerPhotoUrl ? <img src='https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/anon.png' /> : <img src={sellerPhotoUrl} />}

                                    <div className='seller-info'>
                                        <h2>{seller.username}</h2>
                                            <p>Owner of {' '} <span></span>{!storeName ? 'store' : <u>{storeName}</u>}</p>
                                    </div>
                                </div>
                                <button className='message-seller-btn'>Message {seller.username }</button>
                            </div>
                        </div>
                    </div>
                </div>

                
                <div className='all-reviews-container' id='main'>
                    <div className='review-header-divider'>
                        <div className='review-header'>Reviews for this item </div>
                    </div>
                    {!reviews ? <img src='https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/salad_cat_profile.jpeg'/> : (
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