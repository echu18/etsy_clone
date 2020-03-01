import React from 'react';
import { Link, Redirect } from 'react-router-dom';
import ErrorList from '../error_list';

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            username: "",
            password: ""
        };
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user);
    }

    handleInput(type) {
        return (e) => {
            this.setState({ [type]: e.target.value});
        };
    }

    render() {
        const display = this.props.currentUser ? (<Redirect to="/" />
        ) : this.props.formType === 'Log In' ? (
            <div>
                <Link to="/signup">Sign Up</Link>
                <h1>Log In</h1>
            </div>
        ) : (
                    <div>
                        <Link to="/login">Log In</Link>
                        <h1>Sign Up</h1>
                    </div>
                );


        return (
            <div>
                <form onSubmit={this.handleSubmit}>
                    <ErrorList errors={this.props.errors} />
                    {display}

                    <label>Username:
                        <input type="text" onChange={this.handleInput('username')} placeholder="enter username" />
                    </label>

                    <label>Password:
                        <input type="password" onChange={this.handleInput('password')} placeholder="enter password" />
                    </label>

                    <button>{this.props.formType}</button>
                </form>
            </div>
        )
    }
}

export default SessionForm;
