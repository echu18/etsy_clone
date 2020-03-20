import React from 'react';
import { Link } from 'react-router-dom';
import { orangeIcon1 } from '../../../app/assets/images/svgs/backgrounds';

const AboutBanner
 = (props) => (
     <section className='about-banner'>
         {/* <img className='about-banner-bg' src='https://etsy-clone-dev.s3-us-west-1.amazonaws.com/splash-images/porter_background.jpg'/> */}
         <img className='about-banner-bg' src='https://thebitcoinpub-91d3.kxcdn.com/uploads/default/original/2X/3/32a6d325b043b106b6eb05ad15fde357741e9b0f.jpg'/>
         
        <div className='about-header-container'>
            <h2>What is Memesy?</h2>
            <p>Read our wonderfully weird story</p>
        </div> 

        <div className='about-block-container'>
            <div className='about-block'>
                 <h2>A one-of-a-kind community</h2>
                 <p>Memesy is a global online marketplace, where people come together to make, sell, buy, and collect  <br></br>    <strike>items</strike> dank memes.</p>
            </div>

            <div className='about-block'>
                 <h2>Support independent creators</h2>
                 <p>There’s no Memesy warehouse – just millions of people selling the things they love. We make the whole process easy, helping you connect directly with makers to find something extraordinary.</p>
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





