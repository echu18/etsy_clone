import React from 'react';

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
                <p>{this.props.header}</p>
            </div>
        )
    }
}

export default CategoryDropdown;