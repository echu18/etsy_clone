import React from 'react';
import ReactDOM from 'react-dom';
import * as SessionApiUtil from './util/session_api_util';

document.addEventListener("DOMContentLoaded", () =>{
    const root = document.getElementById('root');
    
    window.login = SessionApiUtil.login;
    window.logout = SessionApiUtil.logout;
    window.signup = SessionApiUtil.signup;


    ReactDOM.render(<h1>Etsy Clone</h1>, root);
});