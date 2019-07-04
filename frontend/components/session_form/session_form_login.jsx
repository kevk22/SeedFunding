import React from 'react';
import { withRouter } from 'react-router-dom';

class SessionFormLogin extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: '',
      email: '',
      password: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    // this.handleGuestSubmit = this.handleGuestSubmit.bind(this)
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  }

  renderErrors() {
    return(
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  // handleGuestSubmit(e) {
  //   e.preventDefault();
  //   this.props.demoUser({email: 'demo', password: 'password'})
  //     .then(() => this.props.history.push("/"));
  // }



  async demoLogin(e) {
    e.preventDefault();

    const demoUser = {
      email: 'demo', password: 'password' 
    };

    const sleep = ms => new Promise(res => setTimeout(res, ms));

    document.getElementById('email-input').focus();
    for (let i = 1; i <= demoUser.email.length; i++) {
      this.setState({ email: demoUser.email.substr(0, i) });
      await sleep(50);
    }

    await sleep(250);

    document.getElementById('password-input').focus();
    for (let i = 1; i <= demoUser.password.length; i++) {
      this.setState({ password: demoUser.password.substr(0, i) });
      await sleep(50);
    }

    await sleep(250);

    document.getElementById('session-submit-btn').click();
    document.getElementById('password-input').blur();
  }

  render() {
    return (
      <div className="login-form-container">
        <form onSubmit={this.handleSubmit} className="login-form-box">
          Log in
          <br/>
          {this.renderErrors()}
          <div className="login-form">
            <br/>
            <label>Email:
              <input type="text" id="email-input"
                value={this.state.email}
                onChange={this.update('email')}
                className="login-input"
              />
            </label>
            <br/>
            <label>Password:
              <input type="password" id="password-input"
                value={this.state.password}
                onChange={this.update('password')}
                className="login-input"
              />
            </label>
            <br/>
            <input className="session-submit" type="submit" value={this.props.formType} id="session-submit-btn" />
            <button onClick={this.demoLogin.bind(this)}>Login as demo user</button>
            <br/>
            New to SeedFunding? {this.props.navLink}
          </div>
        </form>
      </div>
    );
  }
}

export default withRouter(SessionFormLogin);
