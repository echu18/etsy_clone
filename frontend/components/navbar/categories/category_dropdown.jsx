import React from 'react';
import { giftIcon } from '../../../../app/assets/images/svgs/icons'

class CategoryDropdown extends React.Component {
    constructor(props) {
        super(props);
    }
    // componentDidMount() {
    //     this.props.fetchPost(this.props.post.id)
    // }

    render() {
        return (
            <div className='navbar-cat-header'>
                {/* {this.props.header === 'Gifts' ? <div className='gift-icon'>{giftIcon}</div> : null} */}
                {this.props.header === 'Gifts' ? <div>{giftIcon}</div> : null}
                <p>{this.props.header}</p>
                <hr/>
            </div>
        )
    }
}

export default CategoryDropdown;