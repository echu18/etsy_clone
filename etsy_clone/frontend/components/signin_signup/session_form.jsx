import React from 'react';
import { Link, Redirect } from 'react-router-dom';
import ErrorList from '../error_list';

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            username: "",
            password: "",
            formType: this.props.formType
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
        // const {formType} = this.props;

       const firstName = (
           this.state.formType === 'Sign Up' ? (
               <label>First Name:
                        <input type="text" onChange={this.handleInput('username')} placeholder="enter first name" />
               </label>
           ) : null
       )


        return (
            <div>
                <form onSubmit={this.handleSubmit}>
                    <h1>{this.state.formType} YOOOOOO</h1>
                    <ErrorList errors={this.props.errors} />
                    {/* {display} */}

                    {firstName}

                    <label>Email:
                        <input type="text" onChange={this.handleInput('email')} placeholder="enter email" />
                    </label>
                
                    <label>Password:
                        <input type="password" onChange={this.handleInput('password')} placeholder="secret password" />
                    </label>

                    <button>{(this.state.formType) === 'Sign Up' ? 'Register' : 'Sign In'}</button>
                </form>
            </div>
        )
    }
}

export default SessionForm;
