import React from 'react';
import { Link } from 'react-router-dom';
import SignupFormContainer from './signup_form_container';
import SigninFormContainer from './signin_form_container';

class Popup extends React.Component {
    constructor(props) {
        super(props);
        this.state={
            formType: "Sign in",
            showOverlay: 'show-popup-overlay'
        }
        this.toggleFormType = this.toggleFormType.bind(this);
        this.closePopup = this.closePopup.bind(this);
    }

    componentDidUpdate() {
        this.props.clearErrors()
    }

    toggleOverlay() {
        (this.state.showOverlay === "show-popup-overlay") ?
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

    closePopup() {
        this.props.closePopup()
        this.props.clearErrors()
    }

    
    render() {
        // const {closePopup} = this.props;

        const display = this.state.formType === 'Sign in' ? (
                <div>
                    <SigninFormContainer formType={this.state.formType} closePopup={this.props.closePopup}/>
                </div>
            ) : (
                <div>
                    <SignupFormContainer formType={this.state.formType} closePopup={this.props.closePopup}/>
                </div>
            );

        const toggleButton = (this.state.formType === "Sign in") ? (
            <button className='signin-signup-toggle' onClick={this.toggleFormType}>Register</button>
        ) : (
                <button className='signin-signup-toggle' onClick={this.toggleFormType}>Sign in</button>

            )

        const sessionFormHeader = (this.state.formType === "Sign in") ? (
            <p className='form-name'>Sign in</p>
        ) : (
            <div>
                <p className='form-name'>Create your account</p>
                <p className='form-name-caption'>Registration is easy.</p>
            </div>
        )
            
            
        return (

            <div className="popup">
                <div className={this.state.showOverlay} onClick={this.closePopup}></div>
                
                <div className="popup-inner">
                    <div className='popup-topline'>
                        {sessionFormHeader}
                        {toggleButton}
                    </div>
                    
                    <p className='popup-msg'>{this.props.message ? this.props.message : null} </p>
                    {display}
                    {/* <button onClick={closePopup} onClick={this.toggleOverlay}>Close</button> */}
                </div>
            </div>
           
        )
    }
}


export default Popup;