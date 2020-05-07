import React from 'react';
// import {  withRouter } from 'react-router-dom';
import { withRouter, Link } from "react-router-dom";
import { starIcon, halfStarIcon } from '../../../app/assets/images/svgs/icons'

// Props - takes in a product, will render bite-sized info + picture

class ProductCard extends React.Component {
  constructor(props) {
    super(props);
    // this.handleClick = this.handleClick.bind(this);
    this.getStars = this.getStars.bind(this);
  }

  getName(name) {
    return name.length <= 25 ? name : name.slice(0, 25) + "...";
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

  render() {
    // if (!this.props.product) return null;
    // if (!this.props.product.price) return null;
    // if (!this.props.product.photoUrls) return null;

    if (
      !this.props.product ||
      !this.props.product.price ||
      !this.props.product.photoUrls
    )
      return null;

    const product = this.props.product;
    const price = new Intl.NumberFormat("en-US", {
      style: "currency",
      currency: "USD",
    }).format(this.props.product.price);


    // const storeName = function( ){

    //     if (!product) {
    //         return null;
    //     }else {
    //         return (

    //         <p className="product-card-store">
    //             {product.seller.store_name
    //             ? product.seller.store_name
    //             : `${product.seller.name}'s Store`}
    //         </p>
    //         )
    //     }
    // }
    

    return (
      <Link to={`/products/${product.id}`} target="_blank">
        <img
          className={`product-card-image ${
            this.props.product.categories.some((cat) => cat.name === "Cosplay")
              ? `adjusted-img`
              : `reg-img`
          }`}
          src={this.props.product.photoUrls[0]}
        />
        <span className="box-shadow"></span>
        {/* <p>{this.getName(this.props.product.name)}</p> */}
        <p className="product-card-name">{this.props.product.name}</p>
      
          {/* {storeName} */}

        {this.props.location.pathname === '/' ? null : <div className='index-card-stars'>{this.getStars(this.props.product.avg_rating)}</div>}
        <p className="product-card-price">
          {" "}
          {price}{" "}
          {!this.props.product.reviews ? null : this.props.product.reviews
              .length > 2 ? (
            <span className="bestseller">Bestseller</span>
          ) : null}
        </p>
        {/* {parseInt(this.props.product.price) > 15.0 ? <p className='bestseller'>Best seller</p> : null} */}
      </Link>
    );
  }
}

export default withRouter(ProductCard);