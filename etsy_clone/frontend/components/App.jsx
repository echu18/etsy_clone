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

import SplashContainer from './main_content/splash_container';


const App = () => (
    <div id='app'>
        <span id='category-divider'></span>
        
        <div id='main'>
            <header className="header">
                <NavbarContainer />
            </header>
            <Switch>
                <Route exact path="/" component={SplashContainer} />
                <Route exact path="/products/:productId" component={ProductShowContainer} />
                <Route exact path="/cart_items" component={CartShowContainer} />
                <Route exact path="/signin" component={LoginFormContainer} />
                <Route exact path="/signup" component={SignupFormContainer} />
                {/* <Route exact path="/products/:productId/reviews" component={ReviewContainer} /> */}
            </Switch>
            <footer className='footer'>
            </footer>
        </div>
    </div>
);

export default App;