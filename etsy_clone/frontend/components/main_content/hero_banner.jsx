import React from 'react';
import { Link } from 'react-router-dom';

const HeroBanner = (props) => (
    <div className='main-hero-banner' id='inner'>
        <div className='hero-block hero-large'>
            <div className='text-container'>
                <h2>Standing out just got so easy.</h2>
                <p>Shop fashion > </p>
                <img className='hero-large-img' src="" alt=""/>
            </div>
        </div>

        <div className='hero-block hero-medium'>
            <h2>Bridesmaids must-haves</h2>
            <p>Shop gifts > </p>
            <img className='hero-medium-img' src="" alt="" />
        </div>

        <div className='hero-block hero-small'>
            <div className='text-container'>
                <h2>Free shipping coming right up > </h2>
            </div>
        </div>
    </div>
)

export default HeroBanner;





