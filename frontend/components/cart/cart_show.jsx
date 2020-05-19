import React from 'react';
import { Link } from 'react-router-dom';
import CartItemBar from './cart_item_bar'
import {paypalIcon, visaIcon, discoverIcon, amexIcon, mastercardIcon } from '../../../app/assets/images/svgs/icons';

class CartShow extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
          cartTotal: 0,
          shippingTotal: 0,
          grandTotal: 0,
          totalQty: 0,
          paymentMethod: 'credit',
          render: false
        }
      this.redirectToHome = this.redirectToHome.bind(this);
      this.updatePaymentMethod = this.updatePaymentMethod.bind(this);
    }

    componentDidMount(){
        // this.props.clearCartItems()
        debugger
        // Promise.all(this.props.fetchCartItems())
        this.props.fetchCartItemProducts()
      }
      
      componentDidUpdate(prevProps){
        // if (this.props.cartItems || this.props.products) return null;

        if (this.props.cartItems !== prevProps.cartItems) {
          this.updateTotalPrice()
          this.updateTotalQty()
          if (!this.state.render) this.setState({ render: true });
        }
        
        // if (!this.state.render) this.setState({ render: true });
      }

    // componentWillUpdate(nextProps) {
    //   // debugger
    //   if (this.props.cartItems !== nextProps.cartItems) {
    //     // this.setState({ render: true })
    //   }
    // }

    // componentWillReceiveProps(nextProps){ 
    //   debugger
    //   if (this.props.cartItems !== nextProps.cartItems){
    //     this.updateTotalPrice()
    //     this.setState({ render: true })

    //   }
    // }
    
    updateTotalPrice() {
      
      if (this.props.cartItems.length === 0) {
              this.setState({
                cartTotal: 0,
                shippingTotal: 0,
                grandTotal: 0,
              });

      } else {

      
        let sum = 0;
        (this.props.cartItems).forEach(cartItem => {
          if (!!this.props.products[cartItem.product_id]) {
            sum +=
              cartItem.quantity *
              this.props.products[cartItem.product_id].price;
          }
          })
        
        let shippingTotal = this.props.cartItems.length * 3.99;
        let grandTotal = shippingTotal + sum;
        
        this.setState({cartTotal: sum, shippingTotal: shippingTotal, grandTotal: grandTotal})
      }
    }


    updateTotalQty(){
      
      let sum = 0;

      this.props.cartItems.forEach(cartItem => {
        sum += cartItem.quantity
      })

      this.setState({totalQty: sum})
    }

    formatPrice(price) {
      return new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(price)
    }


    updatePaymentMethod(e, paymentType){
      e.preventDefault()

      this.setState({paymentMethod: paymentType})
    }

    redirectToHome() {
      this.props.history.push('/')
    }

    render() {
      
        // if (!this.props.cartItems) return null;
        // if (!this.props.currentUserId) return null;
        if (!this.props.products) return null;
        // const cartItems = Array.from(this.props.cartItems);
        const {products, cartItems, users} = this.props

        

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
                        <h3>{this.state.totalQty === 1 ? "1 item" : this.state.totalQty + " items"} in your cart</h3>
                      <button className="keep-shopping-btn" onClick={this.redirectToHome}>Keep shopping</button>
                    </section>

                    <div className="cart-items">
                      {cartItems.map((cartItem, idx) => {
                        return (
                          <CartItemBar idx={idx} cartItem={cartItem} products={products} {...this.props} callbackFromParent={this.childCallback}/>
                        );
                      })}
                      <div className="cart-pay-container">
                        <div className='cart-pay-inner'>
                          <h3>How you'll pay</h3>
                          <label className='credit-payment'>
                              <button className={`payment-btn ${this.state.paymentMethod === 'credit' ? 'payment-btn-checked' : null}`} onClick={e => this.updatePaymentMethod(e, 'credit')} />
                      
                              <div className='payment-icons'>{mastercardIcon}{visaIcon}{amexIcon}{discoverIcon}</div>
                          </label>
                              
                          <label className='credit-payment'>
                              <button className={`payment-btn ${this.state.paymentMethod === 'paypal' ? 'payment-btn-checked' : null}`} onClick={e => this.updatePaymentMethod(e, 'paypal')}/>
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
                                <p>{this.formatPrice(this.state.shippingTotal)}</p>
                              </div>

                              <div className='cart-pay-divider'></div>

                              <div className='ci-total'>
                                <p>Total ({this.state.totalQty} item{this.state.totalQty === 0 || this.state.totalQty > 1 ? `s` : null})</p>
                                <p>{this.formatPrice(this.state.grandTotal)}</p>
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