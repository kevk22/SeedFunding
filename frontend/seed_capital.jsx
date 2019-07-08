import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';
import { login, signup, logout } from './actions/session_actions';
import { fetchProjects } from './actions/project.actions';

document.addEventListener("DOMContentLoaded", () => {
    window.login = login;
    window.signup = signup;
    window.logout = logout;
    window.fetchProjects = fetchProjects;

    let store;
    if (window.currentUser) {
        const preloadedState = {
            session: { id: window.currentUser.id },
            entities: {
                users: { [window.currentUser.id]: window.currentUser }
            }
        };

        store = configureStore(preloadedState);
        delete window.currentUser;
    } else {
        store = configureStore();
    }

    window.getState = store.getState;
    window.dispatch = store.dispatch; 
    
    ReactDOM.render(<Root store={store}/>, document.getElementById('root'));
})

