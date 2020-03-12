import React from 'react';


class CartSidebar extends React.Component {
    constructor(props) {
        super(props);
        this.state={
            user_id: this.props.currentUser.id,
            product_id: this.props.product.id,
            quantity: 1,
            fulfilled: false
        }
        this.handleSubmit = this.handleSubmit.bind(this);
        this.updateQuantity = this.updateQuantity.bind(this);
    }



    handleSubmit(e) {
        e.preventDefault();
        this.setState({ userId: this.props.currentUser.id })
        this.props.addCartItem(this.state)
    }

    updateQuantity(e){
        this.setState({quantity: e.target.value})
    }

    render() {
        if (this.props.currentUser.id === undefined) return null;
        if (this.props.product.id === undefined) return null;
        return (
            <div className='cart-sidebar-container'>
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