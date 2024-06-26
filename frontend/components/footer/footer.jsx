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
                    <div className='riptear-1'>
                        {ripTear1}
                    </div>
                    <p>Yes! Send me exclusive offers, unique gift ideas, and personalized tips for shopping and selling on Memesy.</p>
                    
                    <div className='mailing-list-input'>
                        <input type="text" placeholder='Enter your email' />
                        <button>Subscribe</button>
                    </div>
                </div>

                <div className='footer-links-container'>
                    <div className='riptear-2'>
                        {ripTear2}
                    </div>

                    <div className='footer-blocks max-width'>
                        <div className='footer-shop fblock'>
                            <h2>Shop</h2>
                                <p>Gift cards</p>
                                <p>Memesy blog</p>
                        </div>

                        <div className='footer-sell fblock'>
                            <h2>Sell</h2>
                                <p>Sell on Memesy</p>
                                <p>Teams</p>
                                <p>Forums</p>
                                <p>Affiliates</p>
                        </div>

                        <div className='footer-about fblock'>
                            <h2>About</h2>
                                <p>Memesy, Inc.</p>
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
                                {/* <button className='download-app-btn'>{etsyIcon}Download the Memesy App</button> */}
                                <a href="https://youtu.be/dQw4w9WgXcQ" target="_blank"><div className='download-app-btn'><img src='https://etsy-clone-dev.s3-us-west-1.amazonaws.com/splash-images/micon-white.png'/> Download the Memesy App</div></a>

                                <div className='footer-logo-container'>
                                    <a href="https://www.github.com/echu18" target="_blank">{githubIcon}</a>
                                    <a href="https://www.linkedin.com/in/echu18" target="_blank">{linkedinIcon}</a>
                                    <a href="https://echu18.github.io/" target="_blank">{briefcaseIcon}</a>
                                    <a href="mailto:elizabethchu18@gmail.com">{convoIcon}</a>
                                    {/* {githubIcon}  {linkedinIcon} {briefcaseIcon} {convoIcon}  */}
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <div className='footer-end-container'>
                    
                    <div className='lang-currency'> 
                    <img src="https://etsy-clone-dev.s3-us-west-1.amazonaws.com/splash-images/usaIcon.png"/>
                    United States   |   English (US)   |   $ (USD)
                    </div>
                    <div className='terms-policies'>
                        <p>© 2024 Memesy, Inc.</p>
                        <p><u>Terms of Use</u></p>
                        <p><u>Privacy</u></p>
                        <p><u>Interest-based ads</u></p>
                    </div>
                </div>

            </div>
        )
    }

}

export default Footer;
