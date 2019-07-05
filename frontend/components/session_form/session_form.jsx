import React from 'react';
import { withRouter } from 'react-router-dom';

class SessionForm extends React.Component {
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
    this.props.demoUser({ email: 'kevin3@aa.io', password: 'password', name: 'Kevin' })
      .then(() => this.props.history.push("/"));
  }

  render() {
    return (
      <div className="login-form-container">
        <div className="center-screen">
        
        <form onSubmit={this.handleSubmit} className="login-form-box">
        
          <div className="frame-header">Have an account? {this.props.navLink}</div>
          <br/>
        
          <div className="sign-up-text">Sign up</div>
          {this.renderErrors()}
        
        
          <div className="login-form">
            <label>
              <input type="text"
                value={this.state.name}
                autoFocus="autofocus"
                placeholder="Name"
                onChange={this.update('name')}
                className="login-input"
              />
            </label>
           
            <br/>
           
            <label>
              <input type="text"
                value={this.state.email}
                placeholder="Email"
                onChange={this.update('email')}
                className="login-input"
              />
            </label>

            <br/>

            <label>
              <input type="password"
                value={this.state.password}
                placeholder="Password"
                onChange={this.update('password')}
                className="login-input"
              />
            </label>
            
            <br/>
            <input className="session-submit" type="submit" value={this.props.formType} />
            
            <button onClick={this.handleGuestSubmit} className="demo-submit">Login as Demo User</button>
          </div>
        </form>
        </div>
      </div>
    );
  }
}

export default withRouter(SessionForm);
