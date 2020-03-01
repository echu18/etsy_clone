import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import { Route } from 'react-router-dom';
import SignupFormContainer from '../components/login_signup/signup_form_container';
import LoginFormContainer from '../components/login_signup/login_form_container';
import { AuthRoute } from '../util/route_util';


const App = () => (
    <div>
        <header>
            <h1>Etsy Clone</h1>
            <GreetingContainer />
        </header>

        <Route path="/login" component={LoginFormContainer} />
        <Route path="/signup" component={SignupFormContainer} />
    </div>
);

export default App;