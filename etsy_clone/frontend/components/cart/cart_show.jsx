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
        const cartItems = this.props.cartItems;
        debugger
        return (
           <div className='cart-show-container'>
                <p>{!this.props.currentUser ? 'Please log in' : 'cart'}</p>
               <h1>Cart</h1>
                <ul>
                    {/* {this.props.cartItems.map(cartItem => {
                        return <li>{cartItem}</li>
                    })} */}
                </ul>
           </div>
        )
    }
}

export default CartShow;