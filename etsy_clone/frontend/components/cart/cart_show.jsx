import React from 'react';


class CartShow extends React.Component {
    constructor(props) {
        super(props);
        this.state = {

        }
    }

    componentDidMount(){
        this.props.fetchCartItems(this.props.match.params.userId)
        
    }




    render() {
        if (!this.props.cartItems) return null;

        const cartItems = this.props.cartItems;
        debugger
        return (
           <div className='cart-show-container'>
               <h1>Cart</h1>
                <ul>
                    {this.props.cartItems.map(cartItem => {
                        return <li>{cartItem}</li>
                    })}
                </ul>
           </div>
        )
    }
}

export default CartShow;