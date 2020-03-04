import React from 'react';

class categoryDropdown extends React.Component {
    constructor(props) {
        super(props);
        this.state= this.props;
    }
    // componentDidMount() {
    //     this.props.fetchPost(this.props.post.id)
    // }

    render() {
        return (
            <div className='cat-header'>
                <h2>{this.state.header}</h2>
            </div>
        )
    }
}

export default categoryDropdown;