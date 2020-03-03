import React from 'react';
import { Link } from 'react-router-dom';
import Popup from './popup';
import {cartIcon, searchIcon, etsyLogo} from '../../../app/assets/images/svgs/icons'


class Navbar extends React.Component {
    constructor(props) {
        super(props);
        this.state = {showPopup: false};
        this.togglePopup = this.togglePopup.bind(this);
        this.signOutAndClear = this.signOutAndClear.bind(this);
    }
    
   togglePopup() {
       this.setState({
           showPopup: !this.state.showPopup
       });
   }

    signOutAndClear () {
        this.props.signOut();
        this.setState({ showPopup: false })
    }
   
    render() {
        const { currentUser, signOut, signIn, clearErrors } = this.props;

        const display = currentUser ? (
            <div>
                <p className="signin-signout" onClick={this.signOutAndClear}>Sign out</p>
            </div>
        ) : (
            <div>
                <p className="signin-signout" onClick={this.togglePopup}>Sign in</p>

                    {this.state.showPopup ?

                    <Popup
                        text='hello'
                        closePopup={this.togglePopup}
                        currentUser={currentUser}
                        clearErrors={clearErrors}
                    /> : null
                    }
            </div>
        );



        return(
            <div className="navbar">
                <div className="navbar-inner">
                    <div className="etsyLogo">
                        {etsyLogo}
                    </div>

                <div className="searchbar">
                    <form className="searchbar-form" /*onSubmit={}*/>
                        <input type="text" name="search" placeholder="Search for items or shops"/>
                            <div className="navbar-icon search-icon">
                                {searchIcon}
                            </div>
                    </form>
                </div>
                    
                    { display }

                    <div className="navbar-icon cart-icon">
                        { cartIcon }
                    </div>
                </div>
                
            </div>
        )
    }
}

export default Navbar;