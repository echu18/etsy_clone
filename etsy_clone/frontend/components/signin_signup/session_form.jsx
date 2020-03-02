import React from 'react';
import { Link, Redirect } from 'react-router-dom';
import ErrorList from '../error_list';

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            username: "",
            email: "",
            password: "", 

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

       const firstName = (
           this.props.formType === 'Sign up' ? (
            <div className="field">
               <label className='field-label firstname-label'>First Name:
                        <input className='form-field' type="text" onChange={this.handleInput('username')} placeholder="enter first name" />
               </label>
            </div >

           ) : null
       )

     


        return (
            <div>
                <form className="session-form" onSubmit={this.handleSubmit}>
                    <ErrorList errors={this.props.errors} />


                    {firstName}
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

                    <button className="signin-register-btn">{(this.props.formType) === 'Sign up' ? 'Register' : 'Sign in'}</button>
                    
                </form>
            </div>
        )
    }
}

export default SessionForm;
