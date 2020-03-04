import React from 'react';
import { Route } from 'react-router-dom';
import { AuthRoute } from '../util/route_util';
import SignupFormContainer from '../components/signin_signup/signup_form_container';
import LoginFormContainer from '../components/signin_signup/signin_form_container';
import NavbarContainer from './navbar/navbar_container';
import SplashContainer from './main_content/splash_container';


const App = () => (
    <div>
        <div id='main'>
            <header className="header">
                <NavbarContainer />
            </header>
        </div>
        <span id='category-divider'></span>

        <div id='main'>
            <Route path="/signin" component={LoginFormContainer} />
            <Route path="/signup" component={SignupFormContainer} />

            <div className="splash">
                <SplashContainer />
            </div>

            <footer className='footer'>
            </footer>
        </div>
    </div>
);

export default App;