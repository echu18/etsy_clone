import React from 'react';
import { Route } from 'react-router-dom';
import { AuthRoute } from '../util/route_util';
import GreetingContainer from './greeting/greeting_container';
import SignupFormContainer from '../components/signin_signup/signup_form_container';
import LoginFormContainer from '../components/signin_signup/signin_form_container';
import NavbarContainer from './navbar/navbar_container';


const App = () => (
    <div>
        <header className="header">
            {/* <h1>Etsy Clone</h1> */}
            {/* <GreetingContainer /> */}
            <NavbarContainer />
        </header>

        <Route path="/signin" component={LoginFormContainer} />
        <Route path="/signup" component={SignupFormContainer} />

        <div className="splash">
                <h1>insert main page content here</h1>
        </div>
    </div>
);

export default App;