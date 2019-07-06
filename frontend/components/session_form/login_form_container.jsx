import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { login, clearErrors } from '../../actions/session_actions';
import SessionFormLogin from './session_form_login';

const mapStateToProps = ({ errors }) => {
  return {
    errors: errors.session,
    formType: 'Log me in!',
    navLink: <Link to="/signup">Sign up!</Link>,
  };
};

const mapDispatchToProps = dispatch => {
  return {
    processForm: (user) => dispatch(login(user)),
    clearErrors: () => dispatch(clearErrors()),
    demoUser: (user) => dispatch(login(user))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionFormLogin);
