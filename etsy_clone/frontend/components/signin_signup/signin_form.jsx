import React from 'react';
import { Link, Redirect } from 'react-router-dom';
import ErrorList from '../error_list';

class SigninForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            email: "",
            password: "",

        };
        this.handleSubmit = this.handleSubmit.bind(this);
    }


    componentDidMount() {
        this.props.clearErrors()
    }

    componentDidUpdate() {
        this.props.clearErrors()
    }

    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user);
    }

    handleInput(type) {
        return (e) => {
            this.setState({ [type]: e.target.value });
        };
    }


    render() {
        return (
            <div>
                <form className="session-form" onSubmit={this.handleSubmit}>
                    <ErrorList errors={this.props.errors} />

                    <div className="field">
                        <label className='field-label email-label'>Email address
                            <input className='form-field' type="text" onChange={this.handleInput('email')} placeholder="enter email" />
                        </label>
                    </div>

                    <div className="field">
                        <label className='field-label password-label'>Password
                            <input className='form-field' type="password" onChange={this.handleInput('password')} placeholder="secret password" />
                        </label>
                    </div>

                    <button type='submit' className="signin-register-btn">Sign in</button>

                </form>
            </div>
        )
    }
}

export default SigninForm;