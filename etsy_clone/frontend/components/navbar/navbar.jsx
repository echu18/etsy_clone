import React from 'react';
import { Link, withRouter, Redirect } from 'react-router-dom';
import Popup from '../signin_signup/popup';
import CategoryDropdownContainer from './categories/category_dropdown_container'
import {cartIcon, searchIcon, etsyLogo} from '../../../app/assets/images/svgs/icons'


class Navbar extends React.Component {
    constructor(props) {
        super(props);
        this.state = {showPopup: false};
        this.togglePopup = this.togglePopup.bind(this);
        this.signOutAndClear = this.signOutAndClear.bind(this);
        this.redirectToHome = this.redirectToHome.bind(this);
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

    redirectToHome () {
        this.props.history.push('/')
    }
   
    render() {
        const { currentUser, signOut, signIn, clearErrors } = this.props;
        const categories = ['Jewelry & Accessories', 'Clothing & Shoes', 'Home & Living', 'Wedding & Party', 'Toys & Entertainment', 'Art & Collectibles', 'Craft Supplies', 'Vintage', 'Gifts'];

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
                <div className="navbar-inner" id='inner'>
                    <div className="etsyLogo" onClick={this.redirectToHome}>
                        {etsyLogo}
                    </div>

                    <div className="searchbar">
                        <div className="searchbar-form" >
                            <form /*onSubmit={}*/>
                                <input type="text" name="search" placeholder="Search for items or shops" autoComplete='off'/>      
                            </form>
                            <div className="navbar-icon search-icon">
                                {searchIcon}
                            </div>
                        </div>
                    </div>
                    
                    { display }

                    <div className="navbar-icon cart-icon">
                        { cartIcon }
                    </div>
                </div>

                <div className='categories-bar' id='inner'>
                    {categories.map((cat, idx) => {
                        return <CategoryDropdownContainer header={cat} key={idx} />
                    })}
                </div>
            </div>
        )
    }
}

// export default Navbar;
export default withRouter(Navbar);





// <categoryDropdownContainer header={'Jewelry & Accessories'} />
//     <categoryDropdownContainer header={'Clothing & Shoes'} />
//     <categoryDropdownContainer header={'Hom e& Living'} />
//     <categoryDropdownContainer header={'Wedding & Party'} />
//     <categoryDropdownContainer header={'Toys & Entertainment'} />
//     <categoryDropdownContainer header={'Art & Collectibles'} />
//     <categoryDropdownContainer header={'Craft Supplies'} />
//     <categoryDropdownContainer header={'Vintage'} />
//     <categoryDropdownContainer header={'Gifts'} />