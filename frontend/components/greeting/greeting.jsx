import React from 'react';
import { Link } from 'react-router-dom';

const Greeting = ({ currentUser, logout, openModal }) => {

    const sessionLinks = () => (
        <nav className="header-group">
            <Link to="/login" className="signin-header">Sign in</Link>
            <Link to="/projects/new" className="create-header">Create a project</Link>
            {/* login-signup */}
            {/* signin-header */}
        </nav>
        
    );

    const personalGreeting = () => (
        <hgroup className="header-group">
            <img src="ben_frank.jpeg" className="ben-frank" onClick={() => openModal('profile')} />
            <Link to="/projects/new" className="create-header">Create a project</Link>
        </hgroup>
    );

    return currentUser ? personalGreeting() : sessionLinks();
};


export default Greeting;
