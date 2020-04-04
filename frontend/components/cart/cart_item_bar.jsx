import React from 'react'

class CartItemBar extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            user_id: this.props.currentUserId,
            product_id: this.props.cartItem.id,
            quantity: this.props.cartItem.quantity,
            fulfilled: false
        }
        // this.handleSubmit = this.handleSubmit.bind(this);
        this.updateQuantity = this.updateQuantity.bind(this);
    }

    updateQuantity(e) {
        this.setState({ quantity: e.target.value })
    }

    updatePrice(price){
        const updatedPrice = price * this.state.quantity
        const formatPrice = new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(updatedPrice);
        debugger
        return formatPrice;
    }

    
    render() {
        const { cartItem, products, users} = this.props;
        
        return (
            <div className="cart-item-bar">
                <section>
                    <img src={users[products[cartItem.product_id].seller_id].photoUrls[0]} />
                    <p className='ci-store-name'>{users[products[cartItem.product_id].seller_id].store_name}</p>
                    <p className='ci-contact-shop'>Contact shop</p>
                </section>

                <div className="ci-block-upper">
                    <img
                        className="ci-image"
                        src={products[cartItem.product_id].photoUrls[0]}
                        alt=""
                    />
                    <div className="ci-name">
                        <p>{products[cartItem.product_id].name}</p>
                        <button>Save for later</button>
                        <button>Remove</button>
                    </div>
                    <select id='ci-qty-dropdown' onChange={this.updateQuantity} quantity={this.state.quantity}>
                        <option value='1'>1</option>
                        <option value='2'>2</option>
                        <option value='3'>3</option>
                        <option value='4'>4</option>
                        <option value='5'>5</option>
                        <option value='6'>6</option>
                        <option value='7'>7</option>
                    </select>
                    <p className="ci-price">
                        {this.updatePrice(products[cartItem.product_id].price)}
                    </p>
                </div>

                <label className="gift-label">
                    <input type="checkbox" />
                        <section>
                        This order is a gift
                            <aside>
                                Prices will not be shown on packing slip
                            </aside>
                        </section>
                </label>

                <div className="ci-block-lower">
                    <textarea
                        className="add-note"
                        placeholder={'Add a note to ' + `${users[products[cartItem.product_id].seller_id].store_name ? users[products[cartItem.product_id].seller_id].store_name : 'seller'}` + ' (optional)'}
                    />
                    <section>
                        <h3>Shipping: $3.99</h3>
                        <p>Estimated delivery: April 10 from United States</p>
                    </section>
                </div>
                <button className="checkout-shop-btn">
                    Check out from only this shop >{" "}
                </button>

                {this.props.idx === this.props.cartItems.length-1 ? null : (
                    <div className='ci-divider'></div>
                )}
            </div>
        )
    }
}


export default CartItemBar;