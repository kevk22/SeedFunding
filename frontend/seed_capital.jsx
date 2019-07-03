import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import { login, signup, logout } from './util/session_api_util';

document.addEventListener("DOMContentLoaded", () => {
    let store = configureStore();
    window.login = login;
    window.signup = signup;
    window.logout = logout;
   
    ReactDOM.render(<h1>SeedCap</h1> , document.getElementById('root'));
})

