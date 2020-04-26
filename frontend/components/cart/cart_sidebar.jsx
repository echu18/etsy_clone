import React from 'react';
import { Link } from 'react-router-dom';



class CartSidebar extends React.Component {
    constructor(props) {
        super(props);
        this.state={
            user_id: this.props.currentUserId,
            product_id: this.props.product.id,
            quantity: 1,
            fulfilled: false,
            showPopup: false
        }
        this.handleSubmit = this.handleSubmit.bind(this);
        // this.handleAddToCart = this.handleAddToCart.bind(this);
        this.updateQuantity = this.updateQuantity.bind(this);
        this.togglePopup = this.togglePopup.bind(this);

    }


    handleSubmit(e) {
        e.preventDefault();
        this.setState({ userId: this.props.currentUserId})

        // if (this.props.addCartItem(this.state)) {
        //     this.togglePopup()
        // }

        this.props.addCartItem(this.state).then(this.togglePopup)
    }

    togglePopup() {
        // e.preventDefault();
        this.setState({
            showPopup: !this.state.showPopup
        });
    }

    // handleAddToCart(e) {
    //     e.preventDefault();
    //     this.togglePopup()
    // }

    updateQuantity(e){
        this.setState({quantity: e.target.value})
    }

    render() {
        
        // if (this.props.currentUser.id === undefined) return null;
        // if (this.props.product.id === undefined) return null;

        const addToCartPopup = 
        (
            <div className='addtocart-confirm'>
                    <p>Added to your cart!</p>
                    <Link to={`/cart_items`}>Go to Cart</Link>
                    <button onClick={this.togglePopup}>Close</button>
            </div>
        )


        return (
            <div className='cart-sidebar-container'>
                <div className={this.state.showPopup ? `show-popup-overlay` : `hide-popup-overlay`} onClick={this.togglePopup}></div>

                {this.state.showPopup ? addToCartPopup : null}

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

export default CartSidebar;