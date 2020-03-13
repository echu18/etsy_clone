import React from 'react';
import {ripTear1, ripTear2} from '../../../app/assets/images/svgs/backgrounds'
import {linkedinIcon, facebookIcon, etsyIcon, instagramIcon, briefcaseIcon, convoIcon, githubIcon} from '../../../app/assets/images/svgs/footer_icons';

class Footer extends React.Component {
    constructor(props) {
        super(props);

    }


    render() {
        return(
            <div className='footer-container'>
                <div className='mailing-list-container'>
                    {ripTear1}
                    <p>Yes! Send me exclusive offers, unique gift ideas, and personalized tips for shopping and selling on Etsy.</p>
                    
                    <div className='mailing-list-input'>
                        <input type="text" placeholder='Enter your email' />
                        <button>Subscribe</button>
                    </div>
                </div>

                <div className='footer-links-container'>
                    {ripTear2}

                    <div className='footer-blocks'>
                        <div className='footer-shop fblock'>
                            <h2>Shop</h2>
                                <p>Gift cards</p>
                                <p>Etsy blog</p>
                        </div>

                        <div className='footer-sell fblock'>
                            <h2>Sell</h2>
                                <p>Sell on Etsy</p>
                                <p>Teams</p>
                                <p>Forums</p>
                                <p>Affiliates</p>
                        </div>

                        <div className='footer-about fblock'>
                            <h2>About</h2>
                                <p>Etsy, Inc.</p>
                                <p>Policies</p>
                                <p>Investors</p>
                                <p>Careers</p>
                                <p>Press</p>
                                <p>Impact</p>
                        </div>

                        <div className='footer-help fblock'>
                            <h2>Help</h2>
                                <p>Help Center</p>
                                <p>Privacy settings</p>

                            <div className='footer-icon-section'>
                                <button className='download-app-btn'>{etsyIcon}Download the Etsy App</button>

                                <div className='footer-logo-container'>
                                    {githubIcon}  {linkedinIcon} {briefcaseIcon} {convoIcon} 
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <div className='footer-end-container'>
                    <img src="https://etsy-clone-dev.s3-us-west-1.amazonaws.com/splash-images/usaIcon.png"/>
                    <div className='lang-currency'> United States   |   English (US)   |   $ (USD)</div>
                    <div className='terms-policies'></div>
                </div>

            </div>
        )
    }

}

export default Footer;