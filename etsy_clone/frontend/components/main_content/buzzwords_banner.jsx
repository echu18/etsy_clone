import React from 'react';
import { Link } from 'react-router-dom';
import { checkMark } from '../../../app/assets/images/svgs/icons';

// import { } from '../../../app/assets/images/svgs/icons';

const BuzzwordsBanner = (props) => (
    <section className='buzzwords-banner'>
        <div className='buzzwords-block'>

            <h2><div className='checkmark check-1'> {checkMark}</div>Unique everything</h2>
            <p>We have millions of one-of-a-kind items, so you can find whatever you need (or really, really want).</p>
        </div>

        <div className='buzzwords-block'>

            <h2><div className='checkmark check-2'> {checkMark}</div>Independent sellers</h2>
            <p>Buy directly from someone who put their heart and soul into making something special.</p>
        </div>

        <div className='buzzwords-block'>

            <h2><div className='checkmark check-3'> {checkMark}</div>Secure shopping</h2>
            <p>We use best-in-class technology to protect your transactions.</p>
        </div>
    </section>
)

export default BuzzwordsBanner;





