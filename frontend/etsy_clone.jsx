import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';
import {signIn, signOut, signUp} from './actions/session_actions';
import { createRoot } from 'react-dom/client';


document.addEventListener("DOMContentLoaded", () =>{    
    let store;
    let preloadedState = undefined;
    if (window.currentUser) {
        preloadedState = {
            session: {
                currentUserId: window.currentUser.id
            }
        };
        store = configureStore(preloadedState);
        delete window.currentUserId;
    } else {
        store = configureStore();
    }

    
    window.store = store;
    const root = createRoot(document.getElementById('root'));
    root.render(<Root store={store}/>);
});