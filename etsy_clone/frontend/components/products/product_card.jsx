import React from 'react';
// import { } from '

// Props - takes in a product, will render bite-sized info + picture

class ProductImage extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            
        }

    }

    render() {
        const { urls } = this.props;

        return (
            <div className='photo-carousel'>
                <div className='photos-small-panel'>
                    {urls.map((url, idx) => {
                        return (
                            <div className='photo-small-container' id={idx} key={idx} onMouseOver={e => this.handleHover(e)}>
                                <img className='photo-small' src={url} />
                            </div>
                        )
                    })}
                </div>

                <div className='arrow-icons photo-carousel'>
                    <div className='left-arrow-icon' onClick={this.handlePreviousPhoto}>
                        {leftArrow}
                    </div>

                    <div className='right-arrow-icon' onClick={this.handleNextPhoto}>
                        {rightArrow}
                    </div>
                </div>

                <div className='photo-large-container'>
                    <img className='photo-large' src={this.state.urls[this.state.currentPhotoIdx]} />
                </div>
            </div>
        )
    }
}

export default ProductImage;