import React from 'react';
import { Link } from 'react-router-dom';

const Greeting = ({ currentUser, logout, openModal }) => {
    let that = this;

    const sessionLinks = () => (
        <nav className="login-signup">
            <Link to="/login" className="signin-header">Sign in</Link>
        </nav>
    );

    const personalGreeting = () => (
        <hgroup className="header-group">
            {/* <h2 className="header-name">Hi, {currentUser.email}!</h2> */}
            
            {/* <button className="header-button" onClick={() => openModal('profile')}><img src="ben_frank.jpeg" className="ben-frank" /></button> */}
            <img src="ben_frank.jpeg" className="ben-frank" onClick={() => openModal('profile')} />
        </hgroup>
    );

    return currentUser ? personalGreeting() : sessionLinks();
};


export default Greeting;
