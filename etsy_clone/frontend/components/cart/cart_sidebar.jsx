


class cartSidebar extends React.Component {
    constructor(props) {
        super(props);
        this.state={

        }
    }




    render() {
        return (
            <div className='cart-sidebar-container'>
                <label for='sidebar-quantity'>Quantity</label>
                <select id='sidebar-quantity-dropdown'>
                    <option value='1'>1</option>
                    <option value='2'>2</option>
                    <option value='3'>3</option>
                    <option value='4'>4</option>
                    <option value='5'>5</option>
                    <option value='6'>6</option>
                    <option value='7'>7</option>
                </select>
            </div>
        )
    }
}