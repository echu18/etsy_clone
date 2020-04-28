import React from 'react';
import { giftIcon } from '../../../../app/assets/images/svgs/icons'
import { Link, withRouter, Redirect } from 'react-router-dom';


class CategoryDropdown extends React.Component {
    constructor(props) {
        super(props);

        this.handleClick = this.handleClick.bind(this);
    }
    // componentDidMount() {
    //     this.props.fetchPost(this.props.post.id)
    // }


    handleClick(e, header){
        e.preventDefault();
        // this.props.searchProducts(header)


    if (header === 'Gifts') {
        this.props.history.push(`/gifts`)
    } else if (this.props.location.search.includes(`category=${header.split(" ").join("%20").slice(0, -1)}`)) {
            window.location.reload()
    } else { 
        this.props.history.push(`/search?category=${header}`)
    }
    }



    render() {
        return (
            <div className='navbar-cat-header' onClick={e => this.handleClick(e, this.props.header)}>
                {/* {this.props.header === 'Gifts' ? <div className='gift-icon'>{giftIcon}</div> : null} */}
                {this.props.header === 'Gifts' ? <div>{giftIcon}</div> : null}
                <p >{this.props.header}</p>
                {/* <p onClick={this.handleClick(this.props.header)}>{this.props.header}</p> */}
                <hr/>
            </div>
        )
    }
}

export default withRouter(CategoryDropdown);