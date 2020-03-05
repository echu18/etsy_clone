import React from 'react';

class categoryDropdown extends React.Component {
    constructor(props) {
        super(props);
    }
    // componentDidMount() {
    //     this.props.fetchPost(this.props.post.id)
    // }

    render() {
        return (
            <div className='cat-header'>
                <p>{this.props.header}</p>
            </div>
        )
    }
}

export default categoryDropdown;