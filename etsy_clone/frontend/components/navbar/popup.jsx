import React from 'react';
import { Link } from 'react-router-dom';
import SignupFormContainer from '../signin_signup/signup_form_container';
import SigninFormContainer from '../signin_signup/signin_form_container';

class Popup extends React.Component {
    constructor(props) {
        super(props);
        this.state={
            formType: "Sign In",
            showOverlay: 'show-popup-overlay'
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

    
    render() {
        const {closePopup} = this.props;

        const display = this.state.formType === 'Sign In' ? (
                <div>
                    <SigninFormContainer formType={this.state.formType}/>
                </div>
            ) : (
                <div>
                    <SignupFormContainer formType={this.state.formType}/>
                </div>
            );


            
            const toggleButton = (this.state.formType === "Sign In") ?  (
                <button onClick={this.toggleFormType}>Sign Up</button>
                ) : (
                    <button onClick={this.toggleFormType}>Sign In</button>
                    
                )
                    
                // const popup = (
                   
                // )
                
        return (

            <div className="popup">
                <div className={this.state.showOverlay} onClick={closePopup}></div>
                <div className="popup-inner">
                    {toggleButton}
                    {display}
                    <button onClick={closePopup} onClick={this.toggleOverlay}>Close</button>
                </div>
            </div>
           
        )
    }
}


export default Popup;