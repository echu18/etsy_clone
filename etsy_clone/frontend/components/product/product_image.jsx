import React from 'react';

class ProductImage extends React.Component {
    constructor(props){
        super(props);
        this.state={
            urls: this.props.product.photoUrls,
            currentPhoto: this.props.product.photoUrls[0]
        }
        // console.log(this.props)
        this.changePhoto = this.changePhoto.bind(this);
        this.handleClick = this.handleClick.bind(this);
    }



    changePhoto(idx) {
        this.setState({currentPhoto: this.props.urls[idx]});
    }

    handleClick(e) {
        // e.preventDefault();
        this.changePhoto(e.currentTarget.id);
    }



    render() {
        const {urls} = this.props;

        return (
            <div className='photo-carousel'>
                <div className='photos-small-panel'>
                    {urls.map((url, idx) => {
                        return (
                            <div className='photo-small-container' id={idx} key={idx} onMouseOver={e => this.handleClick(e)}>
                                <img className='photo-small' src={url} />
                            </div>
                        )
                    })}
                </div>

                <div className='photo-large-container'>
                    <img className='photo-large' src={this.state.currentPhoto}/> 
                </div>
            </div>
        )
    }
}

export default ProductImage;