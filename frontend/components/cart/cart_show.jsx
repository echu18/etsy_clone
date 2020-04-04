import React from 'react';
import CartItemBar from './cart_item_bar'
import {paypalIcon, visaIcon, discoverIcon, amexIcon, mastercardIcon } from '../../../app/assets/images/svgs/icons';

class CartShow extends React.Component {
    constructor(props) {
        super(props);
        this.state = {

        }
    }

    componentDidMount(){
        this.props.clearCartItems()
        this.props.fetchCartItems()
    }




    render() {
        // if (!this.props.cartItems) return null;
        // if (!this.props.currentUserId) return null;
        // if (!this.props.products) return null;
        // const cartItems = Array.from(this.props.cartItems);
        const {products, cartItems, users} = this.props
        

        return (
          <div className='cart-outer-container'>
              <div className='cart-background'></div>
            <div className="cart-show-container">
              {!cartItems ? (
                <p className="empty-cart-msg">Your cart is empty.</p>
              ) : (
                <div className="cart-inner">
                  <section>
                    <h3>{cartItems.length} items in your cart</h3>
                    <button className="keep-shopping-btn">Keep shopping</button>
                  </section>

                  <div className="cart-items">
                    {cartItems.map((cartItem, idx) => {
                      return (
                        <CartItemBar idx={idx} cartItem={cartItem} {...this.props}/>
                      );
                    })}
                    <div className="cart-pay-container">
                      <div className='cart-pay-inner'>
                        <h3>How you'll pay</h3>
                        <label className='credit-payment'>
                            <div className='large-radio-btn'>
                              {/* <input type="radio" name='payment-radio'/> */}
                            </div>

                            <div className='payment-icons'>{mastercardIcon}{visaIcon}{amexIcon}{discoverIcon}</div>
                        </label>
                            
                        <label className='credit-payment'>
                          <div className='large-radio-btn'>
                              {/* <input type="radio" name='payment-radio'/> */}
                          </div>

                          <div className='payment-icons'>{paypalIcon}</div>
                        </label>
                      

                        <div className="cart-pay-total">
                            <div className='ci-items-total'>
                              <p>Item(s) total</p>
                              <p>$total</p>
                            </div>

                            <div className='ci-shipping'>
                              <p>Shipping</p>
                              <p>$shipping</p>
                            </div>

                            <div className='cart-pay-divider'></div>

                            <div className='ci-total'>
                              <p>Total ({cartItems.length} items)</p>
                              <p>Total Price</p>
                            </div>
                          <button className='checkout-btn'>Proceed to checkout</button>
                        </div>

                        </div>
                    </div>
                  </div>
                </div>
              )}
            </div>
            {/* <p>Memesy supports reducing carbon emissions on every delivery</p> */}
          </div>
        );
        
    }
}

export default CartShow;