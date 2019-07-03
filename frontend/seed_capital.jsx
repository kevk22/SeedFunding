import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';
import { login, signup, logout } from './util/session_api_util';

document.addEventListener("DOMContentLoaded", () => {
    let store = configureStore();
    window.login = login;
    window.signup = signup;
    window.logout = logout;

    window.getState = store.getState;
    window.dispatch = store.dispatch; 

    
    ReactDOM.render(<Root store={store}/> , document.getElementById('root'));
})

