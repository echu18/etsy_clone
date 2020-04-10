import React from 'react';
import { Link, withRouter, Redirect } from 'react-router-dom';
import Popup from '../signin_signup/popup';
import CategoryDropdownContainer from './categories/category_dropdown_container'
import {cartIcon, searchIcon, etsyLogo, giftIcon} from '../../../app/assets/images/svgs/icons'


class Navbar extends React.Component {
    constructor(props) {
        super(props);
        this.state ={
            query: "",
            showPopup: false
        }

        this.togglePopup = this.togglePopup.bind(this);
        this.signOutAndClear = this.signOutAndClear.bind(this);
        this.redirectToHome = this.redirectToHome.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleChange = this.handleChange.bind(this);
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


    handleSubmit(e) {
        e.preventDefault();
        debugger
        this.props.history.push('/search')
        this.props.searchProducts(this.state.query)
    }


    handleChange(e) {
        this.setState({ query: e.target.value });
    }
   



    
    render() {
        // window.scrollTo(0, 0);

        const { currentUserId, signOut, signIn, clearErrors } = this.props;
        // debugger
        // const categories = ['Jewelry & Accessories', 'Clothing & Shoes', 'Home & Living', 'Wedding & Party', 'Toys & Entertainment', 'Art & Collectibles', 'Craft Supplies', 'Vintage'];
        const categories = ['Jewelry & Clothing', 'Home & Living', 'Tech & Accessories', 'Art & Collectibles', 'Pins & Stickers', 'Anime & Gaming', 'Memes', 'Cosplay'];

        const display = currentUserId ? (
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
                        currentUser={currentUserId}
                        clearErrors={clearErrors}
                    /> : null
                    }
            </div>
        );




        var input = document.getElementById("search-bar");

        input.addEventListener("keyup", function (event) {
            if (event.keyCode === 13) {
                // Cancel the default action, if needed
                event.preventDefault();
                // Trigger the button element with a click
                document.getElementsByClassName("search-icon").click();
            }
        });

        return(
            <div className="navbar">
                <div className="navbar-inner" id='inner' >
                    <div className="etsyLogo" onClick={this.redirectToHome}>
                        <img className='memesy-logo' src="https://etsy-clone-dev.s3-us-west-1.amazonaws.com/splash-images/Memesy.png"/>
                        {/* {etsyLogo} */}
                    </div>

                    <div className="searchbar">
                        <div className="searchbar-form" >
                            <form /*onSubmit={}*/>
                                <input type="text" id='search-bar' onChange={this.handleChange} name="query" placeholder="Search for items or shops" autoComplete='off'/>      
                            <div className='search-suggestion-box'>
                                <p>my hero academia</p>
                                <p>one punch man</p>
                                <p>sailor mooon</p>
                                <p>gekkan shoujo</p>
                            </div>
                            </form>
                            <div className="navbar-icon search-icon" onClick={this.handleSubmit}>
                                {searchIcon}
                            </div>
                        </div>
                    </div>

                    
                    { display }

                    
                        {!!this.props.currentUserId ? (
                            // <Link to={`/users/${this.props.currentUser.id}/cart_items`}>
                            <Link to={`/cart_items`}>
                            <div className="navbar-icon cart-icon">{cartIcon}</div>
                        </Link>) : <div className="navbar-icon cart-icon">{cartIcon}</div> }                   
                </div>

                <div className='categories-bar' >
                    {categories.map((cat, idx) => {
                        return <CategoryDropdownContainer header={cat} key={idx} />
                    })}

                    <CategoryDropdownContainer header={'   Gifts'} />
                </div>
            </div>
        )
    }
}

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