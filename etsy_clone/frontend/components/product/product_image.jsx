import React from 'react';

class ProductImage extends React.Component {
    constructor(props){
        super(props);
        this.state={
            currentPhoto: this.props.urls[0]
        }

        this.changePhoto = this.changePhoto.bind(this);
    }



    changePhoto(idx) {
        this.setState({currentPhoto: this.props.urls[idx]});
    }



    render() {
        const {urls} = this.props;

        return (
            // <div className='photo-carousel'>
            //     <div className='photos-small-container'>
            //         {urls.map((url, idx) => {
            //             return (
            //                 <div onClick={this.changePhoto(idx)}>
            //                     <img className='photo-small' src={url} key={idx}/>
            //                 </div>
            //             )
            //         })}
            //     </div>

            //     <div className='photo-large-container'>
            //         <img className='photo-large' src={urls.slice(1)}/> // needs to be state: currentphoto
            //     </div>
            // </div>
        )
    }
}

export default ProductImage;