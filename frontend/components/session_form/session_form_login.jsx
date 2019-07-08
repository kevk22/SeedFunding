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
    this.demoLogin = this.demoLogin.bind(this);
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

  componentWillMount() {
    this.props.clearErrors();
  }

  async demoLogin(e) {
    e.preventDefault();

    const demoUser = {
      email: 'kevin3@aa.io', password: 'password' 
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
        <div className="center-screen">
        <form onSubmit={this.handleSubmit} className="login-form-box">

          <div className="frame-text">Log in</div>
          <br/>

          <div className="session-errors">{this.renderErrors()}</div>
          <div className="login-form">
          <br/> 

            <label>
              <input type="text" id="email-input"
                value={this.state.email}
                placeholder="Email"
                onChange={this.update('email')}
                className="login-input"
              />
            </label>

            <br/>
            <label>
              <input type="password" id="password-input"
                value={this.state.password}
                placeholder="Password"
                onChange={this.update('password')}
                className="login-input"
              />
            </label>

            <br/>
              <input className="session-submit" type="submit" value={this.props.formType} id="session-submit-btn" />
              <br />  
              <button onClick={this.demoLogin} className="demo-submit">Login as Demo User</button>
            <br/>

              <div className="bottom-signup">New to SeedFunding? {this.props.navLink}</div>
          </div>
        </form>
        </div>
      </div>
    );
  }
}

export default withRouter(SessionFormLogin);
