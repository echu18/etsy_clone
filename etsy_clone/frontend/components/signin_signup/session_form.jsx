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

    // toggleFormType() {
    //     this.setState({
    //         formtype: (formType === 'Sign In') ? 'Sign Up' : 'Sign In'
    //     })
    // }

    render() {
       


        return (
            <div>
                <form onSubmit={this.handleSubmit}>
                    <h1>{this.state.formType} YOOOOOO</h1>
                    <ErrorList errors={this.props.errors} />
                    {/* {display} */}

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
