import React from 'react';
import { Link } from 'react-router-dom';

const HeroBanner = (props) => (
    <div className='main-hero-banner' id='inner'>
        <div className='hero-block hero-large'>
            <div className='text-container'>
                <p>Standing out just got so easy.</p>
                <p>Shop fashion > </p>
                <img className='hero-large-img' src="" alt=""/>
            </div>
        </div>

        <div className='hero-medium-small'>
            <div className='hero-block hero-medium'>
                <p>Bridesmaids must-haves</p>
                <p>Shop gifts > </p>
                <img className='hero-medium-img' src="" alt="" />
            </div>

            <div className='hero-block hero-small'>
                <div className='text-container'>
                    <p>Free shipping coming right up > </p>
                </div>
            </div>
        </div>
    </div>
)

export default HeroBanner;





