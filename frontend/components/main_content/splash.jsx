import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';
import HeroBanner from './hero_banner';
import BuzzwordsBanner from './buzzwords_banner';
import CatModuleContainer from './cat_module_container';
import LoadingPage from '../loading_page';
import { receiveSplashProducts} from '../../actions/product_actions';


class Splash extends React.Component{
    constructor(props){
        super(props);
        this.state = {
            rendered: false
        }
    }


    componentDidMount() {
        this.props.fetchSplashProducts()
        .then(products => receiveSplashProducts(products))
            .done(() => this.setState({ rendered: true })) 
    }
    

    // componentWillUnmount() {
    //     this.props.clearProducts()
    // }

    render() {
        window.scrollTo(0, 0);

        if (!this.props.products) return null;

        // const {products} = this.props;
        
        if (!this.state.rendered) {
            return (
              <div id="splash-main" id="inner">
                <div className="splash-loading">
                  <LoadingPage />
                </div>

                <span className='splash-anchor'></span>
              </div>
            );
        } else {

        return(
            <div id='splash-main' id='inner'>
                    <div className='main-headline-text' id='inner'>
                        {/* <p>If it’s handcrafted, vintage, custom, or unique, it’s on Etsy.</p> */}
                        {/* <p className='headline-p1'>Welcome to Memesy! Take a look around, we won't judge.</p> */}
                        <p className='headline-p2'>See what's trending on Memesy.</p>
                    </div>

                <div className='splash-inner'>
                    <HeroBanner />

                   <BuzzwordsBanner />

                    <div className='cat-modules cat-mod'>
                        <div className='cat-module-1 cat-mod'>
                            <div className='cat-module-header'>
                                <p className='cat-title'>Our picks for you</p> 
                                <a href="#">See more</a>
                            </div>

                            <CatModuleContainer row={this.props.products.slice(0,6)}/>
                            {/* Header 1 (category title + see more) */}
                        </div>


                        <div className='cat-module-2 cat-mod'>
                            <div className='cat-module-header'>
                                <p className='cat-title'>Popular in gaming</p> 
                                <a href="#">See more</a>
                            </div>

                            <CatModuleContainer row={this.props.products.slice(6,12)} />
                            {/* Header 2 (category title + see more) */}
                        </div>

                        <div className='cat-module-3 cat-mod'>
                            <div className='cat-module-header'>
                                <p className='cat-title'>Here ya go, you weeb</p> 
                                <a href="#">See more</a>
                            </div>

                            <CatModuleContainer row={this.props.products.slice(12,18)}/>
                            {/* Header 3 (category title + see more) */}
                        </div>

                        <div className='cat-module-4 cat-mod'>
                            <div className='cat-module-header'>
                                <p className='cat-title'>For Memelords™ only</p> 
                                <a href="#">See more</a>
                            </div>

                            <CatModuleContainer row={this.props.products.slice(18, 24)} />
                            {/* Header 3 (category title + see more) */}
                        </div>
                    </div>

                </div>
            </div>
            )
        }
    }
}

export default Splash;