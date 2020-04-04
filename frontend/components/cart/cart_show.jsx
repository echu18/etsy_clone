import React from 'react';
import CartItemBar from './cart_item_bar'

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
                      <h3>How you'll pay</h3>
                      {/* <input type="radio" />
                            <input type="radio" /> */}
                      <div className="cart-pay-total">
                        <p>Item(s) total</p>
                        <p>$total price goes here</p>
                        <p>Shipping</p>
                        <p>$shipping price goes here</p>
                        <p>Total ({cartItems.length} items)</p>
                        <p>Total Price</p>
                        <button>Proceed to checkout</button>
                        <p>Additional duties and taxes may apply</p>
                      </div>
                    </div>
                  </div>
                </div>
              )}
            </div>
          </div>
        );
        
    }
}

export default CartShow;