import React from 'react';
import { connect } from 'react-redux';

import { fetchUser } from '../../actions/user_actions'


class SellerInfo extends React.Component {
    componentDidMount() {
        this.props.fetchSeller(this.props.sellerId);
    }

    render() {
        if (!seller) return null; 
        return (
            <div className='seller-info'>
                <p>{this.state.seller.username}</p>
                {/* <img src={seller.photo}/>  */}
            </div>
        )
    }

}



const mapStateToProps = (state, ownProps) => ({
    sellerId: sellerId
})

const mapDispatchToProps = dispatch => ({
    fetchSeller: sellerId => dispatch(fetchUser(sellerId))
})

export default connect(mapStateToProps, mapDispatchToProps)(SellerInfo);