import React from 'react';
import { Link } from 'react-router-dom';
import HeroBanner from './hero_banner';
import CatModuleContainer from './cat_module_container';



class Splash extends React.Component{
    constructor(props){
        super(props)
    }


    componentDidMount() {
        this.props.fetchProducts
    }

    render() {
        return(
            <div id='splash-main' id='inner'>
                <div className='main-headline-text' id='inner'>
                    <p>If it’s handcrafted, vintage, custom, or unique, it’s on Etsy.</p>
                </div>

                {/* .main-hero-banner */}
                <HeroBanner />

                <section className='main-buzzwords-banner'>
                    <div className='buzzwords-block-1'></div>
                    <div className='buzzwords-block-2'></div>
                    <div className='buzzwords-block-3'></div>
                </section>


                { /* <div className='prods'>
                    {products.map((prod, idx) => {
                        return (
                            <div className='prod-card' key={idx}>
                                {/* <img src={prod.photoUrls[0]}></img> */}
                               {/* } <p>{prod.price}</p>
                            </div>
                        )
                    })}
                </div> */}

                
                <section className='cat-module-1'>
                    {/* Header 1 (category title + see more) */}
                    {/* {catModuleContainer} */}
                </section>

                <section className='cat-module-2'>
                    {/* Header 2 (category title + see more) */}
                    {/* categoryModuleContainer */}
                </section>

                <section className='cat-module-3'>
                    {/* Header 3 (category title + see more) */}
                    {/* categoryModuleContainer */}
                </section>

                <section className='cat-module-4'>
                    {/* Header 4 (category title + see more) */}
                    {/* categoryModuleContainer */}
                </section>
            </div>
        )
    }
}

export default Splash;