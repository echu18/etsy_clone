import React from 'react';
import { Link } from 'react-router-dom';
import SignupFormContainer from '../signin_signup/signup_form_container';
import SigninFormContainer from '../signin_signup/signin_form_container';

class Popup extends React.Component {
    constructor(props) {
        super(props);
        this.state={
            formType: "Sign In"
        }
        this.toggleFormType =this.toggleFormType.bind(this);
    }


    toggleFormType() {
        (this.state.formType === 'Sign In') ?
            (this.setState({
                formType:  'Sign Up'
            })) : (
                (this.setState({
                    formType: 'Sign In'
                }))
            ) 
    }


    render() {
        const {closePopup} = this.props;

        const display = this.state.formType === 'Sign In' ? (
                <div>
                    <SigninFormContainer />
                </div>
            ) : (
                <div>
                    <SignupFormContainer />
                </div>
            );


        const signInPopup = (
            <div> 
                {display}
                <button onClick={closePopup}>Close</button>
                    {/* <button onClick={signIn}>Sign In</button>  */ }
            </div>
        )

        const toggleButton = (this.state.formType === "Sign In") ?  (
            <button onClick={this.toggleFormType}>Sign Up</button>
        ) : (
            <button onClick={this.toggleFormType}>Sign In</button>

        )

        return (

            <div className="popup">
                {toggleButton}
                {signInPopup}
            </div>
           
        )
    }
}


export default Popup;