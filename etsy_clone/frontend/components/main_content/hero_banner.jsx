import React from 'react';
import { Link } from 'react-router-dom';
import {angleArrowIcon} from '../../../app/assets/images/svgs/icons';

const HeroBanner = (props) => (
    <div className='main-hero-banner' id='inner'>
        <div className='hero-block-large'>
                <div className='hero-large-text'>
                    <h3>Standing out just got so easy.</h3>
                    <p>Shop fashion <div className='angle-arrow-icon arrow-hero-large'>{angleArrowIcon}</div></p>
                </div>

                <div className='hero-container'>
                    <img className='hero-large-img' src='https://etsy-clone-dev.s3-us-west-1.amazonaws.com/splash-images/hero-img-large-resize.jpg'/>
                </div>
        </div>

        <div className='hero-medium-small'>
            <div className='hero-block-medium'>
                    <div className='hero-medium-text'>
                        <h3>Bridesmaids must-haves</h3>
                    <p>Shop gifts <div className='angle-arrow-icon arrow-hero-medium'>{angleArrowIcon}</div></p>
                    </div>
                    <div className='hero-container'> { /* hero container div maintains margin and whitespace */}
                        <img className='hero-medium-img' src="https://etsy-clone-dev.s3-us-west-1.amazonaws.com/splash-images/hero-medium.jpg"/>
                    </div>
            </div>

            <div className='hero-block-small'>
                {/* <div className='hero-container'> */}
                    <div className='hero-small-text'>
                        <p>Free shipping coming right up </p>
                        <div className='angle-arrow-icon arrow-hero-small'>{angleArrowIcon}</div>
                    </div>
                {/* </div> */}
            </div>
        </div>
    </div>
)

export default HeroBanner;





