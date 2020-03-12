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