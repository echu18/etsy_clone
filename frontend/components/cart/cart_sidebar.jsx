import React from 'react';
import { Link, withRouter } from "react-router-dom";
import Popup from "../signin_signup/popup";



class CartSidebar extends React.Component {
    constructor(props) {
        super(props);
        this.state={
            user_id: this.props.currentUserId,
            product_id: this.props.product.id,
            quantity: 1,
            fulfilled: false,
            showCartPopup: false,
            showSigninPopup: false
        }
        this.handleSubmit = this.handleSubmit.bind(this);
        this.updateQuantity = this.updateQuantity.bind(this);
        this.toggleCartPopup = this.toggleCartPopup.bind(this);
        this.toggleSigninPopup = this.toggleSigninPopup.bind(this);
        this.redirectToCart = this.redirectToCart.bind(this);

    }


    handleSubmit(e) {
        e.preventDefault();
        
        if (this.props.currentUserId) {
            this.setState({ user_id: this.props.currentUserId}, () =>   
            this.props.addCartItem(this.state).then(this.toggleCartPopup))
        } else {
            this.toggleSigninPopup()
        }
    }

    toggleCartPopup() {
        this.setState({
            showCartPopup: !this.state.showCartPopup
        });
    }

    toggleSigninPopup() {
        this.setState({
            showSigninPopup: !this.state.showSigninPopup
        });
    }


    updateQuantity(e){
        this.setState({quantity: e.target.value})
    }

    redirectToCart(){
        this.props.history.push('/cart_items')
    }

    render() {
        


        const price = new Intl.NumberFormat("en-US", {
          style: "currency",
          currency: "USD",
        }).format(this.props.product.price * this.state.quantity);
     

        const addToCartPopup = 
        (
            <div className='addtocart-confirm'>
                    <h3>Added to your cart!</h3>
                    
                    <div className='prod-cart-preview'>
                        <img src={this.props.product.photoUrls[0]} alt="product photo"/>
                        <div className='preview-text'>
                            <p className='preview-prod-name'>{this.props.product.name}</p>
                            <p className='preview-prod-qty'>Quantity: {this.state.quantity}</p>
                            <p className='preview-prod-price'>{price}</p>
                            <button className='gotocart-btn' onClick={this.redirectToCart}>Go to Cart</button>
                        </div>
                    </div>
                    

                    <button className='close-preview-btn' onClick={this.toggleCartPopup}>X</button>
            </div>
        )


        return (
            <div className='cart-sidebar-container'>
                <div className={this.state.showCartPopup ? `show-popup-overlay` : `hide-popup-overlay`} onClick={this.toggleCartPopup}></div>
                <div id='add-cart-signin'>
                    <p>Please<button onClick={this.toggleSigninPopup}>sign in</button>to add to cart.</p>
                </div>

                        {this.props.currentUserId ? null : this.state.showSigninPopup ? (
                            <Popup
                                closePopup={this.toggleSigninPopup}
                                message={"Please sign in to add to cart"}
                                // currentUser={this.props.currentUser.id}
                                clearErrors={this.props.clearErrors}
                            />
                        ) : null}

                {this.state.showCartPopup ? addToCartPopup : null}

                <form onSubmit={this.handleSubmit}>
                    <p className='sidebar-quantity'>Quantity  </p>
                    <select id='sidebar-quantity-dropdown' onChange={this.updateQuantity} quantity={this.state.quantity}>
                        <option value='1'>1</option>
                        <option value='2'>2</option>
                        <option value='3'>3</option>
                        <option value='4'>4</option>
                        <option value='5'>5</option>
                        <option value='6'>6</option>
                        <option value='7'>7</option>
                    </select>
                    <input type="submit" className='addtocart-btn' value="Add to cart" />
                </form>
            </div>
        )
    }
}

export default withRouter(CartSidebar);