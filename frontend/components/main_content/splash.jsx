import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';
import HeroBanner from './hero_banner';
import BuzzwordsBanner from './buzzwords_banner';
import CatModuleContainer from './cat_module_container';


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
                        {/* <p>If it’s handcrafted, vintage, custom, or unique, it’s on Etsy.</p> */}
                        {/* <p className='headline-p1'>Welcome to Memesy! Take a look around, we won't judge.</p> */}
                        <p className='headline-p2'>See what's trending on Memesy.</p>
                        {/* <p className='headline-p3'>What's the difference between a blep and a blop? 🤔</p> */}
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

                            <CatModuleContainer props={this.props} startnum={0} endnum={6}/>
                            {/* Header 1 (category title + see more) */}
                        </div>


                        <div className='cat-module-2 cat-mod'>
                            <div className='cat-module-header'>
                                <p className='cat-title'>Popular in gaming</p> 
                                <a href="#">See more</a>
                            </div>

                            <CatModuleContainer props={this.props} startnum={6} endnum={12}/>
                            {/* Header 2 (category title + see more) */}
                        </div>

                        <div className='cat-module-3 cat-mod'>
                            <div className='cat-module-header'>
                                <p className='cat-title'>Here ya go, you weeb</p> 
                                <a href="#">See more</a>
                            </div>

                            <CatModuleContainer props={this.props} startnum={12} endnum={18}/>
                            {/* Header 3 (category title + see more) */}
                        </div>

                        <div className='cat-module-4 cat-mod'>
                            <div className='cat-module-header'>
                                <p className='cat-title'>For Memelords™ only</p> 
                                <a href="#">See more</a>
                            </div>

                            <CatModuleContainer props={this.props} startnum={18} endnum={24}/>
                            {/* Header 3 (category title + see more) */}
                        </div>
                    </div>

                </div>
            </div>
        )
    }
}

export default Splash;