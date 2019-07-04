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
    this.handleGuestSubmit = this.handleGuestSubmit.bind(this)
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

  handleGuestSubmit(e) {
    e.preventDefault();
    this.props.demoUser({email: 'demo', password: 'password'})
      .then(() => this.props.history.push("/"));
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
              <input type="text"
                value={this.state.email}
                onChange={this.update('email')}
                className="login-input"
              />
            </label>
            <br/>
            <label>Password:
              <input type="password"
                value={this.state.password}
                onChange={this.update('password')}
                className="login-input"
              />
            </label>
            <br/>
            <input className="session-submit" type="submit" value={this.props.formType} />
            <button onClick={this.handleGuestSubmit}>Login as demo user</button>
            <br/>
            New to SeedFunding? {this.props.navLink}
          </div>
        </form>
      </div>
    );
  }
}

export default withRouter(SessionFormLogin);
