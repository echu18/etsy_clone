import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import {angleArrowIcon} from '../../../app/assets/images/svgs/icons';


class HeroBanner extends React.Component {
    constructor(props){
        super(props);


        this.searchHeroBanner = this.searchHeroBanner.bind(this)
    }

    searchHeroBanner(e, bannerSize){
        e.preventDefault() 
        
        if (bannerSize === 'large') {
          this.props.history.push("/search?category=Cosplay")
        } else if (bannerSize === 'medium')  {
          this.props.history.push("/search?category=anime");
        }
    }


    render() {
        return (
          <div className="main-hero-banner" id="inner">
            <div
              className="hero-block-large"
              onClick={(e) => this.searchHeroBanner(e, "large")}
            >
              <div className="hero-large-text">
                <h3>Standing out just got so easy.</h3>
                <p>Shop cosplay </p>
                <div className="angle-arrow-icon arrow-hero-large">
                  {angleArrowIcon}
                </div>
              </div>

              <div className="hero-container">
                {/* <img className='hero-large-img' src='https://etsy-clone-seed.s3-us-west-1.amazonaws.com/splash-images/hero-img-large-resize.jpg'/> */}
                <img
                  className="hero-large-img"
                  src="https://etsy-clone-dev.s3-us-west-1.amazonaws.com/splash-images/dva.jpg"
                />
              </div>
            </div>

            <div className="hero-medium-small">
              <div
                className="hero-block-medium"
                onClick={(e) => this.searchHeroBanner(e, "medium")}
              >
                <div className="hero-medium-text">
                  <h3>Anime must-haves</h3>
                  <p>
                    Shop gifts{" "}
                    <span className="angle-arrow-icon arrow-hero-medium">
                      {angleArrowIcon}
                    </span>
                  </p>
                </div>
                <div className="hero-container">
                  {" "}
                  {/* hero container div maintains margin and whitespace */}
                  {/* <img className='hero-medium-img' src="https://etsy-clone-seed.s3-us-west-1.amazonaws.com/splash-images/hero-medium.jpg"/> */}
                  <img
                    className="hero-medium-img"
                    src="https://etsy-clone-dev.s3-us-west-1.amazonaws.com/splash-images/noface-medium.jpg"
                  />
                  {/* <img className='hero-medium-img' src="https://etsy-clone-seed.s3-us-west-1.amazonaws.com/splash-images/academia.jpg"/> */}
                </div>
              </div>

              <div className="hero-block-small">
                {/* <div className='hero-container'> */}
                <div className="hero-small-text">
                  <p>Free shipping coming right up </p>
                  <div className="angle-arrow-icon arrow-hero-small">
                    {angleArrowIcon}
                  </div>
                </div>
                {/* </div> */}
              </div>
            </div>
          </div>
        );
    }
}


export default withRouter(HeroBanner)

// const HeroBanner = (props) => (
//     <div className='main-hero-banner' id='inner'>
//         <div className='hero-block-large'>
//                 <div className='hero-large-text'>
//                     <h3>Standing out just got so easy.</h3>
//                     <p>Shop cosplay </p><div className='angle-arrow-icon arrow-hero-large'>{angleArrowIcon}</div>
//                 </div>

//                 <div className='hero-container'>
//                     {/* <img className='hero-large-img' src='https://etsy-clone-seed.s3-us-west-1.amazonaws.com/splash-images/hero-img-large-resize.jpg'/> */}
//                 <img className='hero-large-img' onClick={this.props.history.push('/search?category=Cosplay')} src='https://etsy-clone-dev.s3-us-west-1.amazonaws.com/splash-images/dva.jpg'/>
//                 </div>
//         </div>

//         <div className='hero-medium-small'>
//             <div className='hero-block-medium'>
//                     <div className='hero-medium-text'>
//                         <h3>Anime must-haves</h3>
//                     <p>Shop gifts <span className='angle-arrow-icon arrow-hero-medium'>{angleArrowIcon}</span></p>
//                     </div>
//                     <div className='hero-container'> { /* hero container div maintains margin and whitespace */}
//                         {/* <img className='hero-medium-img' src="https://etsy-clone-seed.s3-us-west-1.amazonaws.com/splash-images/hero-medium.jpg"/> */}
//                     <img className='hero-medium-img' src="https://etsy-clone-dev.s3-us-west-1.amazonaws.com/splash-images/noface-medium.jpg"/>
//                     {/* <img className='hero-medium-img' src="https://etsy-clone-seed.s3-us-west-1.amazonaws.com/splash-images/academia.jpg"/> */}
//                     </div>
//             </div>

//             <div className='hero-block-small'>
//                 {/* <div className='hero-container'> */}
//                     <div className='hero-small-text'>
//                         <p>Free shipping coming right up </p>
//                         <div className='angle-arrow-icon arrow-hero-small'>{angleArrowIcon}</div>
//                     </div>
//                 {/* </div> */}
//             </div>
//         </div>
//     </div>
// )

// export default withRouter(HeroBanner);





