import React from 'react';


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
        const {products, cartItems} = this.props
        

        return (
           <div className='cart-show-container'>

                {!cartItems ? <p className='empty-cart-msg'>Your cart is empty.</p> : (  
                    
                    <div className='cart-item-container'>
                        <h3>{cartItems.length} items in your cart</h3>
                        <button>Keep shopping</button>
                        {cartItems.map(cartItem => {
                            return (
                              <div className="cart-item-bar">
                                <p>ShopName</p>
                                <p>Contact shop</p>

                                <div className="ci-block">
                                  <img
                                    src={products[cartItem.product_id].photoUrls[0]}
                                    alt=""
                                  />
                                  <div className="ci-name">
                                    {products[cartItem.product_id].name}
                                    <button>Save for later</button>
                                    <button>Remove</button>
                                  </div>
                                  {/* <select id='sidebar-quantity-dropdown' onChange={this.updateQuantity} quantity={this.state.quantity}>
                                                <option value='1'>1</option>
                                                <option value='2'>2</option>
                                                <option value='3'>3</option>
                                                <option value='4'>4</option>
                                                <option value='5'>5</option>
                                                <option value='6'>6</option>
                                                <option value='7'>7</option>
                                            </select> */}
                                  <p className="ci-price">
                                    {products[cartItem.product_id].price}
                                  </p>

                                  <textarea
                                    className="add-note"
                                    cols="10"
                                    rows="5"
                                    placeholder="Add a note to seller (optional)"
                                  />

                                  <p>Shipping: $3.99</p>
                                  <p>
                                    Estimated delivery: April 10 from United
                                    States
                                  </p>
                                </div>
                              </div>
                            );
                        })}
                        <div className="cart-pay-container">
                            <h3>How you'll pay</h3>
                            {/* <input type="radio" />
                            <input type="radio" /> */}
                            <div className='cart-pay-total'>
                                <p>Item(s) total</p><p>$total price goes here</p>
                                <p>Shipping</p><p>$shipping price goes here</p>
                                <p>Total ({cartItems.length} items)</p>
                                <p>Total Price</p>
                                <button>Proceed to checkout</button>
                                <p>Additional duties and taxes may apply</p>
                            </div>
                        </div>
                    </div>

                )}
           </div>
        )
    }
}

export default CartShow;