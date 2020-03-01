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
                    
                const popup = (
                    <div> 
                        {display}
                        <button onClick={closePopup}>Close</button>
                    </div>
                )
                
        return (

            <div className="popup">
                {toggleButton}
                {popup}
            </div>
           
        )
    }
}


export default Popup;