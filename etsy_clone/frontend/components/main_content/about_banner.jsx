import React from 'react';
import { Link } from 'react-router-dom';
import {  } from '../../../app/assets/images/svgs/icons';

const AboutBanner
 = (props) => (
     <section className='about-banner'>
         <img className='about-banner-bg' src='https://etsy-clone-dev.s3-us-west-1.amazonaws.com/splash-images/porter_background.jpg'/>
         
        <div className='about-header-container'>
            <h2>What is Etsy?</h2>
            <p>Read our wonderfully weird story</p>
        </div> 

        <div className='about-block-container'>
            <div className='about-block'>
                 <h2>A one-of-a-kind community</h2>
                 <p>Etsy is a global online marketplace, where people come together to make, sell, buy, and collect unique items.</p>
            </div>

            <div className='about-block'>
                 <h2>Support independent creators</h2>
                 <p>There’s no Etsy warehouse – just millions of people selling the things they love. We make the whole process easy, helping you connect directly with makers to find something extraordinary.</p>
            </div>

            <div className='about-block'>
                 <h2>Peace of mind</h2>
                 <p>Your privacy is the highest priority of our dedicated team. And if you ever need assistance, we are always ready to step in for support.</p>
            </div>
         </div>

         <div className='question-block'>
             <h2>Have a question? Well, we've got some answers.</h2>
            <button className='question-btn'>Go to Help Center</button>
         </div>
     </section>
)

export default AboutBanner
;





