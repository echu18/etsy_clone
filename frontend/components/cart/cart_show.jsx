import React from 'react';
import { Link } from 'react-router-dom';
import CartItemBar from './cart_item_bar'
import {paypalIcon, visaIcon, discoverIcon, amexIcon, mastercardIcon } from '../../../app/assets/images/svgs/icons';

class CartShow extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
          cartTotal: 0
        }
        // this.curriedAdd = this.curriedAdd.bind(this)
    }

    componentDidMount(){
        this.props.clearCartItems()
        this.props.fetchCartItems()
    }

    componentDidUpdate(prevProps){
      if (this.props.cartItems !== prevProps.cartItems) {
        this.updateTotal()
      }
    }

    componentWillReceiveProps(nextProps){ 
      if (this.props.cartItems !== nextProps.cartItems){
        this.updateTotal()
      }
    }
    
    updateTotal() {
      debugger
      let sum = 0;
      this.props.cartItems.forEach(cartItem => {
        sum += cartItem.quantity * this.props.products[cartItem.product_id].price
      })

      debugger
      this.setState({cartTotal: sum})
    }


    formatPrice(price) {
      return new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(price)
    }

    render() {
      
        // if (!this.props.cartItems) return null;
        // if (!this.props.currentUserId) return null;
        // if (!this.props.products) return null;
        // const cartItems = Array.from(this.props.cartItems);
        const {products, cartItems, users} = this.props

        debugger

        return (
          <div className='cart-outer-container'>
              <div className='cart-background'>
              <div className="cart-show-container">
                {cartItems.length === 0 ? (
                  <div className="empty-cart-msg">
                    <h3>Your cart is empty.</h3>
                    <Link to={`/`}>Discover something unique to fill it up</Link>
                  </div>
                  
                ) : (
                  <div className="cart-inner">
                    <section>
                        <h3>{cartItems.length === 1 ? "1 item" : cartItems.length + " items"} in your cart</h3>
                      <button className="keep-shopping-btn">Keep shopping</button>
                    </section>

                    <div className="cart-items">
                      {cartItems.map((cartItem, idx) => {
                        return (
                          <CartItemBar idx={idx} cartItem={cartItem} {...this.props} callbackFromParent={this.childCallback}/>
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
                                {/* <input tyf
                                pe="radio" name='payment-radio'/> */}
                            </div>

                            <div className='payment-icons'>{paypalIcon}</div>
                          </label>
                        

                          <div className="cart-pay-total">
                              <div className='ci-items-total'>
                                <p>Item(s) total</p>
                                {/* <p>$total</p> */}
                                <p>{this.formatPrice(this.state.cartTotal)}</p>
                              </div>

                              <div className='ci-shipping'>
                                <p>Shipping</p>
                                <p>$shipping</p>
                              </div>

                              <div className='cart-pay-divider'></div>

                              <div className='ci-total'>
                                <p>Total ({cartItems.length} items)</p>
                                <p>Total Price</p>
                                {/* {this.curriedAdd(this.childCallback())} */}
                                {/* {this.store(this.childCallback())} */}

                              </div>
                            <button className='checkout-btn'>Proceed to checkout</button>
                          </div>

                          </div>
                      </div>
                    </div>
                  </div>
              )}
              </div>
            </div>
            {/* <p>Memesy supports reducing carbon emissions on every delivery</p> */}
          </div>
        );
        
    }
}

export default CartShow;




    // curriedSum(fn, num, numArgs) {
    //   debugger
    //   const store = []

    //   return function __curried(num) {
    //     store.push(num)
    //     if (store.length < numArgs) {
    //       return __curried;
    //     } else {
    //       return fn(...store);
    //     }
    //   }
    // }

    // getTotal(arr) {
    //   debugger
    //   let sum = 0;
    //   for (let i=0; i < arr.length; i++) {
    //     sum += arr[i]
    //   }
    //   return sum
    // }


    // curriedAdd(num) {
    //   this.curriedSum(this.getTotal, num, this.props.cartItems.length);
    // }


    // childCallback (childData) {
    //   debugger
    //   return childData;
    //   // this.setState({cartTotal: childData})
    //   // this.curriedAdd(childData)
    //   // this.curriedSum(this.getTotal, this.props.cartItems.length)(childData);
    // }