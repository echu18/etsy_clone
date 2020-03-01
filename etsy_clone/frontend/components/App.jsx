import React from 'react';
import { Route } from 'react-router-dom';
import { AuthRoute } from '../util/route_util';
import GreetingContainer from './greeting/greeting_container';
import SignupFormContainer from '../components/signin_signup/signup_form_container';
import LoginFormContainer from '../components/signin_signup/signin_form_container';
import NavbarContainer from './navbar/navbar_container';


const App = () => (
    <div>
        <header>
            {/* <h1>Etsy Clone</h1> */}
            {/* <GreetingContainer /> */}
            <NavbarContainer />
            // Navbar
            // Sign In 
            // Cart icon 
        </header>

        <Route path="/signin" component={LoginFormContainer} />
        <Route path="/signup" component={SignupFormContainer} />
    </div>
);

export default App;