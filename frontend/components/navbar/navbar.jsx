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
        // this.resetForm = this.resetForm.bind(this);
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
        // this.props.fetchSplashProducts()
        // this.clearSearchbar()
        this.props.clearProducts()
        // this.resetForm()
        this.props.history.push('/')
    }

    // resetForm() {
    //     document.forms['sb-form'].reset();
    // }

    handleSubmit(e) {
        // e.preventDefault();
        if (e.type === 'keyup') {
            e.preventDefault();
            if ((e.keyCode === 13) && $(".searchbar-form input[type=text]").is(":focus")) {
                this.props.searchProducts(this.state.query)
                // this.props.history.push(`/search`)
            this.props.history.push(`/search?query=${this.state.query}`)
            }
        } else if (e.type === 'click') {
            this.props.searchProducts(this.state.query)
            this.props.history.push(`/search?query=${this.state.query}`)
        }
    }


    handleChange(e) {
        this.setState({ query: e.target.value });
    }
   

    // clearSearchbar(){
    //     $('.searchbar-input').clearSearch();
    // }


    
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





        // document.addEventListener("keyup", e => this.handleSubmit(e))
        
        // function (e) {
            // debugger
            // e.preventDefault();
            // if ((e.keyCode === 13) && $(".searchbar-form input[type=text]").is(":focus") && this.state.search) {
            //             this.props.searchProducts(this.state.search)

            // }
        // });

        return(
            <div className="navbar">
                <div className="navbar-inner" id='inner' >
                    <div className="etsyLogo" onClick={this.redirectToHome}>
                        <img className='memesy-logo' src="https://etsy-clone-dev.s3-us-west-1.amazonaws.com/splash-images/Memesy.png"/>
                        {/* {etsyLogo} */}
                    </div>

                    <div className="searchbar">
                        <div className="searchbar-form" >
                            <form name='sb-form' onSubmit={e => e.preventDefault()}>
                                <input type="text" className='searchbar-input' onChange={this.handleChange} onKeyUp={e => this.handleSubmit(e)} name="search" placeholder="Search for items or shops" autoComplete='off'/>      
                                {/* onKeyUp={e => this.handleSubmit(e)} */}
                                
                                <div className='search-suggestion-box'>
                                    <h3>Popular right now</h3>
                                    <p>my hero academia</p>
                                    <p>gaming</p>
                                    <p>one punch man</p>
                                    <p>sailor moon</p>
                                    <p>pins</p>
                                    <p>meme gifts</p>
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

                    <CategoryDropdownContainer header={'Gifts'} />
                </div>
                {/* <hr/> */}
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