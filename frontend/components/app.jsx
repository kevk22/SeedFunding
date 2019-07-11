import React from 'react';
import { Provider } from 'react-redux';
import Modal from './modal/modal';
import {
    Route,
    Redirect,
    Switch,
    Link,
    HashRouter
} from 'react-router-dom';

import GreetingContainer from './greeting/greeting_container';
import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
import HomepageContainer from './homepage/homepage_container'
import ProjectContainer from './project/project_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
    <div>
        <Modal />
        <div className="nav">
            <Link to="/" className="header-link">
                <img src="logo.png" className="logo" />
            </Link>
            <GreetingContainer />
            
        </div>

        <Route path="/projects/:project_id" component={ProjectContainer} />
        <Route exact path="/" component={HomepageContainer}/>
        <AuthRoute exact path="/login" component={LogInFormContainer} />
        <AuthRoute exact path="/signup" component={SignUpFormContainer} />

        <footer className="footer">

        </footer>
    </div>
);

export default App;
