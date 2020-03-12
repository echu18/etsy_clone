import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';
import HeroBanner from './hero_banner';
import BuzzwordsBanner from './buzzwords_banner';
import CatModuleContainer from './cat_module_container';
import AboutBanner from './about_banner';


class Splash extends React.Component{
    constructor(props){
        super(props)
    }


    componentDidMount() {
        this.props.fetchProducts;
    }

   

    render() {
        return(
            <div id='splash-main' id='inner'>
                    <div className='main-headline-text' id='inner'>
                        <p>If it’s handcrafted, vintage, custom, or unique, it’s on Etsy.</p>
                        {/* <p>If it’s anime, gaming, or trending, it’s on Memesy.</p> */}
                    </div>

                <div className='splash-inner'>
                    <HeroBanner />

                   <BuzzwordsBanner />

                    <div className='cat-modules'>
                        <div className='cat-module-1 cat-mod'>
                            <div className='cat-module-header'>
                                <p className='cat-title'>Our picks for you</p> 
                                <a href="#">See more</a>
                            </div>

                            <CatModuleContainer props={this.props} />
                            {/* Header 1 (category title + see more) */}
                        </div>


                        <div className='cat-module-2 cat-mod'>
                            <div className='cat-module-header'>
                                <p className='cat-title'>Best in gaming</p> 
                                <a href="#">See more</a>
                            </div>

                            <CatModuleContainer props={this.props} />
                            {/* Header 2 (category title + see more) */}
                        </div>

                        <div className='cat-module-3 cat-mod'>
                            <div className='cat-module-header'>
                                <p className='cat-title'>Popular items</p> 
                                <a href="#">See more</a>
                            </div>

                            <CatModuleContainer props={this.props} />
                            {/* Header 3 (category title + see more) */}
                        </div>

                        <div className='cat-module-4 cat-mod'>
                            <div className='cat-module-header'>
                                <p className='cat-title'>Popular items</p> 
                                <a href="#">See more</a>
                            </div>

                            <CatModuleContainer props={this.props} />
                            {/* Header 3 (category title + see more) */}
                        </div>
                    </div>

                <AboutBanner />




                </div>
        
            </div>
        )
    }
}

export default Splash;