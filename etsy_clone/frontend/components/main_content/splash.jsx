import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';
import HeroBanner from './hero_banner';
import CatModuleContainer from './cat_module_container';
import { checkMark } from '../../../app/assets/images/svgs/icons';



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

                {/* .main-hero-banner */}
                <div className='splash-inner'>
                    <HeroBanner />

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

                    <div className='cat-module-1'>
                        <div className='cat-module-header'>
                            <p className='cat-title'>Our picks for you</p> 
                            <a href="#">See more</a>
                        </div>

                        <CatModuleContainer props={this.props} />
                        {/* Header 1 (category title + see more) */}
                    </div>

                </div>
            

                
                

                <div className='cat-module-2'>
                    {/* Header 2 (category title + see more) */}
                    {/* <CatModuleContainer /> */}
                </div>

                <div className='cat-module-3'>
                    {/* Header 3 (category title + see more) */}
                    {/* <CatModuleContainer /> */}
                </div>

                <div className='cat-module-4'>
                    {/* Header 4 (category title + see more) */}
                    {/* <CatModuleContainer /> */}
                </div>
            </div>
        )
    }
}

export default Splash;