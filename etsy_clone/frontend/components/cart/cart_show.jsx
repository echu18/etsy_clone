import React from 'react';


class CartShow extends React.Component {
    constructor(props) {
        super(props);
        this.state = {

        }
    }

    componentDidMount(){
        this.props.fetchCartItems()
    }




    render() {
        debugger
        if (!this.props.cartItems) return null;
        if (!this.props.currentUser) return null;
        if (!this.props.products) return null;
        
        // const cartItems = Array.from(this.props.cartItems);
        const {products, cartItems} = this.props
        debugger
        return (
           <div className='cart-show-container'>
                <p>{!this.props.currentUser ? 'Please log in' : 'cart'}</p>
               <h1>Cart</h1>
                <ul>
                    {cartItems.map(cartItem => {
                        return <li>{products[cartItem.product_id].name}</li>
                    })}
                </ul>
           </div>
        )
    }
}

export default CartShow;