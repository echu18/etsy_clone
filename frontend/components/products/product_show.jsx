import React from 'react';
import { withRouter } from 'react-router'
// import ProductImageContainer from './product_image_container';
import ProductImage from './product_image';
import ReviewContainer from '../reviews/review_container.jsx';
import CartSidebarContainer from '../cart/cart_sidebar_container';
import BioPopup from '../bio_popup';
import ReviewFormcontainer from '../../components/reviews/review_form_container.jsx'
import { starIcon, halfStarIcon, rightArrow } from '../../../app/assets/images/svgs/icons'

class ProductShow extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      showBioPopup: false,
    };

    this.handleBackBtn = this.handleBackBtn.bind(this);
    this.getStars = this.getStars.bind(this);
    this.toggleBioPopup = this.toggleBioPopup.bind(this);
  }

  componentDidMount() {
    this.props.clearReviews();
    this.props.fetchProduct(this.props.match.params.productId);
  }

  handleBackBtn(e) {
    e.preventDefault();
    // window.location.reload()
    this.props.history.go(-1);
  }

  getStars(rating) {
    if (!rating) return null;

    const star = starIcon;
    const halfStar = halfStarIcon;

    let stars = [];
    for (let i = 0; i < rating - 1; i++) {
      stars.push(star);
    }

    if (!Number.isInteger(rating)) stars.push(halfStar);

    return stars;
  }

  toggleBioPopup() {
    this.setState({
      showBioPopup: !this.state.showBioPopup,
    });
  }

  render() {
    window.scrollTo(0, 0);

    if (this.props.product === undefined) return null;
    if (this.props.product.seller_id === undefined) return null;
    if (this.props.users[this.props.product.seller_id] === undefined)
      return null;
    if (Object.keys(this.props.users).length < 1) return null;
    const { name, description, category, photoUrls } = this.props.product;
    const price = new Intl.NumberFormat("en-US", {
      style: "currency",
      currency: "USD",
    }).format(this.props.product.price);
    const urls = Array.from(this.props.product.photoUrls);
    const sellerId = this.props.product.seller_id;
    const seller = this.props.users[sellerId];
    const sellerPhotoUrl = this.props.users[sellerId].photoUrls[0];
    const reviews = Object.values(this.props.reviews);
    const storeName = this.props.users[sellerId].store_name;
    // const stars = [starIcon, starIcon, starIcon, starIcon, starIcon];
    // const starSeq = stars.slice(0, this.props.product.avg_rating);

    const starSeq = this.getStars(this.props.product.avg_rating);

    return (
      <div className="product-listing-container max-width">
        {/* <button onClick={e=>this.handleBackBtn(e)}> Back to search results</button> */}
        <div className="image-and-sidebar">
          <ProductImage
            urls={urls}
            product={this.props.product}
            {...this.props}
          />

          <div className="product-sidebar">
            <div className="review-sidebar-header">
              {!storeName ? <p>{seller.username}'s Store</p> : storeName}
              <div className="mini-stars">{starSeq}</div>
              <p className="review-count">
                ( {reviews ? reviews.length : null} )
              </p>
            </div>

            <div className="product-text">
              <p className="product-name">{name}</p>
              <p className="product-price">{price}</p>

              <CartSidebarContainer
                className="cart-sidebar-container"
                product={this.props.product}
                currentUserId={this.props.currentUserId}
              />

              <div className="product-description-container">
                <div className="description-transparent-overlay"> </div>

                <label>Description</label>
                <p className="product-description-text">{description}</p>
              </div>

              <button className="faqs-btn">FAQs {rightArrow}</button>
              <div className="seller-info-container">
                <h3>Meet your seller</h3>

                <div className="seller-photo-text-container">
                  {!sellerPhotoUrl ? (
                    <img src="https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/anon.png" />
                  ) : (
                    <img src={sellerPhotoUrl} />
                  )}

                  <div className="seller-info">
                    <h2>{seller.username}</h2>
                    <p>
                      Owner of <span></span>
                      {!storeName ? "store" : <u>{storeName}</u>}
                    </p>
                  </div>
                </div>
                <button
                  className="message-seller-btn"
                  onClick={this.toggleBioPopup}
                >
                  Message {seller.username}
                </button>

                {this.state.showBioPopup ? (
                  <div className="bio-container">
                    <BioPopup togglePopup={this.toggleBioPopup} offset={"bio-offset"}/>
                  </div>
                ) : null}
              </div>
            </div>
          </div>
        </div>

        <div className="all-reviews-container" id="main">
          <div className="review-header-divider">
            <div className="review-header">Reviews for this item </div>
          </div>
          {!reviews ? (
            <img src="https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/salad_cat_profile.jpeg" />
          ) : (
            reviews.map((review, idx) => {
              return (
                <div className="single-review" key={idx}>
                  <ReviewContainer review={review} reviewNumber={reviews.length-1-idx} productId={this.props.product.id}/>
                </div>
              );
            })
          )}
        </div>

            {/* <ReviewFormContainer /> */}




      </div>
    );
  }
}

export default withRouter(ProductShow);