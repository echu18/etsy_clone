import React from 'react';
import { Link } from 'react-router-dom';
import SignupFormContainer from '../signin_signup/signup_form_container';
import SigninFormContainer from '../signin_signup/signin_form_container';

class Popup extends React.Component {
    constructor(props) {
        super(props);
        this.state={
            formType: "Sign in",
            showOverlay: 'show-popup-overlay'
        }
        this.toggleFormType = this.toggleFormType.bind(this);
    }




    toggleOverlay() {
        (this.state.show === "show-popup-overlay") ?
            (this.setState({
                showOverlay: "hide-popup-overlay"
            })) : (
                (this.setState({
                    showOverlay: "show-popup-overlay"
                }))
            )
    }

    toggleFormType() {
        (this.state.formType === 'Sign in') ?
            (this.setState({
                formType: 'Sign up'
            })) : (
                (this.setState({
                    formType: 'Sign in'
                }))
            )
    }

    
    render() {
        const {closePopup} = this.props;

        const display = this.state.formType === 'Sign in' ? (
                <div>
                    <SigninFormContainer formType={this.state.formType}/>
                </div>
            ) : (
                <div>
                    <SignupFormContainer formType={this.state.formType}/>
                </div>
            );

        const toggleButton = (this.state.formType === "Sign in") ? (
            <button className='signin-signup-toggle' onClick={this.toggleFormType}>Register</button>
        ) : (
                <button className='signin-signup-toggle' onClick={this.toggleFormType}>Sign in</button>

            )

        const sessionFormHeader = (this.state.formType === "Sign in") ? (
            <h2 className='form-name'>{this.state.formType}</h2>
        ) : (
            <div>
                <h2 className='form-name'>Create your account</h2>
                <p className='form-name-caption'>Registration is easy.</p>
            </div>
        )
            
            
        return (

            <div className="popup">
                <div className={this.state.showOverlay} onClick={closePopup}></div>
                
                <div className="popup-inner">
                    <div className='popup-topline'>
                        {sessionFormHeader}
                        {toggleButton}
                    </div>

                    {display}
                    <button onClick={closePopup} onClick={this.toggleOverlay}>Close</button>
                </div>
            </div>
           
        )
    }
}


export default Popup;