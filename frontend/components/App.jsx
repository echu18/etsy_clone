import React from 'react';
import { Route, Switch, Link } from 'react-router-dom';
import { AuthRoute } from '../util/route_util';
import NavbarContainer from './navbar/navbar_container';
import SignupFormContainer from '../components/signin_signup/signup_form_container';
import LoginFormContainer from '../components/signin_signup/signin_form_container';

import CartShowContainer from '../components/cart/cart_show_container';
import ProductShowContainer from './products/product_show_container';
// import CartSidebarContainer from '../components/product/cart_sidebar_container';
// import ReviewContainer from './reviews/review_container';
import ProductIndexContainer from './index/product_index_container';
import SplashContainer from './main_content/splash_container';
import FooterContainer from './footer/footer_container';
import AboutBanner from '../components/main_content/about_banner';
import NotFoundPage from '../components/not_found_page';
import GiftsPage from "../components/gifts_page";
import BlogBanner from '../components/main_content/blog_banner';

const App = () => (
    <div id='app'>
        <span id='category-divider'></span>
        
            <div id='main'>
                <header className="header">
                    <NavbarContainer />
                </header>

                <Switch>
                    <Route exact path="/" component={SplashContainer} />
                    {/* <Route path="/" component={AboutBanner} /> */}
                    <Route exact path="/products/:productId" component={ProductShowContainer} />
                    <Route exact path="/cart_items" component={CartShowContainer} />
                    <Route exact path="/index" component={ProductIndexContainer} />
                    <Route exact path="/search" component={ProductIndexContainer} />
                    <Route exact path="/signin" component={LoginFormContainer} />
                    <Route exact path="/signup" component={SignupFormContainer} />
                    <Route exact path="/gifts" component={GiftsPage} />
                    {/* <Route exact path="/products/:productId/reviews" component={ReviewContainer} /> */}
                    <Route path="*" component={NotFoundPage} />
                </Switch>
            </div>
            {/* <AboutBanner /> */}
        <Route exact path="/" component={AboutBanner} />
        <Route exact path="/" component={BlogBanner} />
        {/* <span id='content-placeholder'></span> */}
        {/* <Route path="/" except="/cart_items" component={FooterContainer} /> */}
        <Route exact path="/" except="/cart_items" component={FooterContainer} />
        <Route exact path="/search" except="/cart_items" component={FooterContainer} />

        {/* <div className='footer'>
            <FooterContainer />
        </div> */}

    </div>
);

export default App;