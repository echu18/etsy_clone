import React from 'react';
import { leftArrow, rightArrow, resizeImage, filledHeart, emptyHeart } from '../../../app/assets/images/svgs/icons'


class ProductImage extends React.Component {
    constructor(props){
        super(props);
        this.state={
            urls: this.props.urls,
            currentPhotoIdx: 0,
            currentPhotoMini: ""
        }

        this.changePhoto = this.changePhoto.bind(this);
        this.handleHover = this.handleHover.bind(this);
        this.handleNextPhoto = this.handleNextPhoto.bind(this);
        this.handlePreviousPhoto = this.handlePreviousPhoto.bind(this);
    }

    componentDidMount(){
        this.changePhoto(0)
    }

    changePhoto(idx) {
        document
          .getElementById(`${this.state.currentPhotoIdx}`)
          .classList.remove("active-listing");
        document.getElementById(`${idx}`).classList.add("active-listing");


        this.setState({currentPhotoIdx: idx});
    }

    handleHover(e) {
        // e.preventDefault();
        this.changePhoto(e.currentTarget.id);
    }

    handleNextPhoto(){
        // e.preventDefault();

        let newPhotoIdx = ((this.state.currentPhotoIdx + 1) % this.state.urls.length);
        this.changePhoto(newPhotoIdx);
    }

    handlePreviousPhoto(){
        // e.preventDefault();

        let newPhotoIdx = (this.state.currentPhotoIdx + this.state.urls.length - 1) % this.state.urls.length;

        this.changePhoto(newPhotoIdx);
    }

// { idx === this.state.currentPhotoIdx ? "display-current-mini" : "" } 

    render() {
        const {urls} = this.props;
        
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

                {/* <div className='arrow-container'></div> */}

                
                    
                <div className='photo-large-container'>
                    <div className='arrow-icons'>
                        <div className='left-arrow-icon' onClick={this.handlePreviousPhoto}>
                            {leftArrow}
                        </div>

                        <div className='right-arrow-icon' onClick={this.handleNextPhoto}>
                            {rightArrow}
                        </div>
                    </div>
                    <img className='photo-large' src={this.state.urls[this.state.currentPhotoIdx]}/> 
                </div>
            </div>
        )
    }
}

export default ProductImage;