import React from 'react'

class CartItemBar extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            // user_id: this.props.currentUserId,
            product_id: this.props.cartItem.id,
            // quantity: this.props.cartItem.quantity,
            totalPrice: 0,
            fulfilled: false
        }
        // this.handleSubmit = this.handleSubmit.bind(this);
        this.updateQuantity = this.updateQuantity.bind(this);
        this.handleDelete = this.handleDelete.bind(this);
        this.redirectToProductPage = this.redirectToProductPage.bind(this)
    }

    componentDidMount(){
        // debugger
        if (!this.props.products || !this.props.cartItem ) return null;

       const price = this.props.products[this.props.cartItem.product_id].price;
       const qty = this.props.cartItem.quantity;
       const initialPrice = price * qty;
        this.setState({ totalPrice: initialPrice, quantity: qty})
    }

    componentWillReceiveProps(nextProps){
        const price = this.props.products[this.props.cartItem.product_id].price;
        const qty = nextProps.cartItem.quantity;
        const newPrice = price * qty;

        if (this.props.cartItem.quantity != nextProps.cartItem.quantity) {
            this.setState({ totalPrice: newPrice, quantity: qty })
        }
    }

    updateQuantity(e) {
        // const updatePrice = this.updatePrice;
        

        const cartItem = this.props.cartItem;
        this.props.editCartItem( cartItem.id, {user_id: cartItem.user_id, product_id: cartItem.product_id, fulfiled: false, quantity: e.target.value })
        // this.setState({ quantity: e.target.value }, updatePrice)

    }

    // updatePrice(){
    //     const updatedPrice = this.props.products[this.props.cartItem.product_id].price * this.state.quantity
    //     this.setState({totalPrice: updatedPrice})
    //     // this.returnPrice()
    //     debugger
    //     // this.props.callbackFromParent(updatedPrice);
    // }

    formatPrice(price){
        return new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(price)
    }
    
    shippingDate() {
        let date = (new Date(Date.now())).getDate()
        let month = (new Date(Date.now())).getMonth()
        let year = (new Date(Date.now())).getFullYear()
        let arrivalDate = new Date(year, month, date + 5)
        return arrivalDate.toDateString().split(" ").slice(1, -1).join(" ")
    }

    handleDelete(e){
        e.preventDefault()
        debugger
        this.props.deleteCartItem(this.props.cartItem.id)
    }

    redirectToProductPage(e, productId){
        e.preventDefault()
        this.props.history.push(`/products/${productId}`)
    }
    
    qtyDropdown() {
        let dropdown = []

        for (let i = 1; i < 50; i++ ){
            dropdown.push(<option value={i} selected={this.props.cartItem.quantity === i ? true : false}>{i}</option>)
        }


        //    <option value='1' selected={cartItem.quantity === 1 ? true : false}>1</option>
        //                 <option value='2' selected={cartItem.quantity === 2 ? true : false}>2</option>
        //                 <option value='3' selected={cartItem.quantity === 3 ? true : false}>3</option>
        //                 <option value='4' selected={cartItem.quantity === 4 ? true : false}>4</option>
        //                 <option value='5' selected={cartItem.quantity === 5 ? true : false}>5</option>
        //                 <option value='6' selected={cartItem.quantity === 6 ? true : false}>6</option>
        //                 <option value='7' selected={cartItem.quantity === 7 ? true : false}>7</option>

        return dropdown;
    }

    render() {
        window.scrollTo(0, 0);

       
       


        if (!this.props.cartItem || !this.props.products) return null; 

        const { cartItem, products, users} = this.props;
        const product = products[cartItem.product_id]
        // const price = products[cartItem.product_id].price * cartItem.quantity
        const price = this.state.totalPrice;
        
        if (!product || !price) return null;

        return (
            <div className="cart-item-bar">
                <section>
                    <img src={users[product.seller_id].photoUrls[0]} />
                    <p className='ci-store-name'>{users[product.seller_id].store_name ? users[product.seller_id].store_name : users[product.seller_id].username}</p>
                    <p className='ci-contact-shop'>Contact shop</p>
                </section>

                <div className="ci-block-upper">
                    <img
                        className="ci-image"
                        src={product.photoUrls[0]}
                        alt={`Product photo: ${product.name}`}
                        onClick={e => this.redirectToProductPage(e, product.id)}
                    />
                    <div className="ci-name">
                        <p onClick={e => this.redirectToProductPage(e, product.id)}>{product.name}</p>
                        <button>Save for later</button>
                        <button onClick={this.handleDelete}>Remove</button>
                    </div>
                    <select id='ci-qty-dropdown' onChange={this.updateQuantity} quantity={this.state.quantity}>
                        {/* <option value='1' {cartItem.quantity === 1 ? selected : "" }>1</option> */}
                        {/* <option value='1' selected={cartItem.quantity === 1 ? true : false}>1</option>
                        <option value='2' selected={cartItem.quantity === 2 ? true : false}>2</option>
                        <option value='3' selected={cartItem.quantity === 3 ? true : false}>3</option>
                        <option value='4' selected={cartItem.quantity === 4 ? true : false}>4</option>
                        <option value='5' selected={cartItem.quantity === 5 ? true : false}>5</option>
                        <option value='6' selected={cartItem.quantity === 6 ? true : false}>6</option>
                        <option value='7' selected={cartItem.quantity === 7 ? true : false}>7</option> */}

                        {this.qtyDropdown()}
                    </select>
                    <p className="ci-price">
                        {/* {this.updatePrice(product.price)} */}
                        {/* {this.state.totalPrice} */}
                        {this.formatPrice(price)}
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
                        placeholder={'Add a note to ' + `${users[product.seller_id].store_name ? users[product.seller_id].store_name : 'seller'}` + ' (optional)'}
                    />
                    <section>
                        <h3>Shipping: $3.99</h3>
                        <p>Estimated delivery: {this.shippingDate()} from United States</p>
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