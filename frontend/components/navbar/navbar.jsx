import React from 'react';
import { Link, withRouter, Redirect } from 'react-router-dom';
import Popup from '../signin_signup/popup';
import CategoryDropdownContainer from './categories/category_dropdown_container'
// import SearchSuggestionBox from './search_suggestion_box';
import {cartIcon, searchIcon, etsyLogo, giftIcon} from '../../../app/assets/images/svgs/icons'


class Navbar extends React.Component {
    constructor(props) {
        super(props);
        this.state ={
            query: "",
            showPopup: false,
            searchSuggestion: false,
            showOverlay: 'hide-overlay',
            cartQty: 0
        }

        this.togglePopup = this.togglePopup.bind(this);
        this.signOutAndClear = this.signOutAndClear.bind(this);
        this.redirectToHome = this.redirectToHome.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleChange = this.handleChange.bind(this);
        this.handleSearchClick = this.handleSearchClick.bind(this);
        this.toggleSuggestionBox = this.toggleSuggestionBox.bind(this);
        this.cartItemLength = this.cartItemLength.bind(this);
        // this.resetForm = this.resetForm.bind(this);
    }

    componentDidMount(){
        if (!!this.props.location.search) {
            let params = this.props.location.search
            this.props.searchProducts(params)
        }
        
        this.props.fetchCartItems().then(this.setState({ cartQty: this.cartItemLength()}))
    }

    componentDidUpdate(prevProps){
        
        if (this.props.location.search != prevProps.location.search) {
            let params = this.props.location.search
            this.props.searchProducts(params)
        }

        if (this.props.cartItems != prevProps.cartItems) {
            this.setState({ cartQty: this.cartItemLength()})
        }
    }
    
   togglePopup() {
       this.setState({
           showPopup: !this.state.showPopup
       });
   }

    toggleSuggestionBox(e) {
        e.preventDefault()
        let suggestionBox = document.getElementsByClassName('search-suggestion-box')[0];

        if (this.state.searchSuggestion === false) {
            suggestionBox.classList.remove('suggestion-hidden')
            suggestionBox.classList.add('suggestion-visible')
            this.setState({ searchSuggestion: true, showOverlay: "show-overlay"})
        } else {
            suggestionBox.classList.remove('suggestion-visible')
            suggestionBox.classList.add('suggestion-hidden')
            this.setState({ searchSuggestion: false, showOverlay: "hide-overlay"})
        }
    }


    // toggleOverlay() {
    //     (this.state.showOverlay === "show-overlay") ?
    //         (this.setState({
    //             showOverlay: "hide-overlay"
    //         })) : (
    //             (this.setState({
    //                 showOverlay: "show-overlay"
    //             }))
    //         )
    // }


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

        if (this.state.searchSuggestion === true) {
            this.toggleSuggestionBox();
        }
    }


    handleChange(e) {
        this.setState({ query: e.target.value });
    }
   

    // clearSearchbar(){
    //     $('.searchbar-input').clearSearch();
    // }

    

    handleSearchClick(e, type, searchTerm) {
        e.preventDefault()
        // this.props.searchProducts({query: searchTerm})
        this.props.history.push(`/search?${type}=${searchTerm}`)
        this.toggleSuggestionBox(e)
    }

    cartItemLength(){
        let count = 0;
        let cartItems = Object.values(this.props.cartItems);
        
        for (let i=0; i< cartItems.length; i++) {
            count += cartItems[i].quantity;
        }
        
        return count;
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
                        // text='hello'
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
                                <input type="text" onClick={this.toggleSuggestionBox} className='searchbar-input' onChange={this.handleChange} onKeyUp={e => this.handleSubmit(e)} name="search" placeholder="Search for items or shops" autoComplete='off'/>      
                                {/* onKeyUp={e => this.handleSubmit(e)} */}
                                
                                {/* <SearchSuggestionBox /> */}


                                    <div className={this.state.showOverlay} onClick={this.toggleSuggestionBox}></div>
                                    <div className='search-suggestion-box suggestion-hidden'>
                                    
                                        <p className='search-suggestion' onClick={e=>this.handleSearchClick(e,  'query', 'my hero academia')}>my hero academia</p>
                                        <p className='search-suggestion' onClick={e=>this.handleSearchClick(e, 'category', 'gaming')}>gaming</p>
                                        <p className='search-suggestion' onClick={e=>this.handleSearchClick(e, 'category', 'keycaps')}>keycaps</p>
                                        <p className='search-suggestion' onClick={e=>this.handleSearchClick(e, 'query', 'one punch man')}>one punch man</p>
                                        <p className='search-suggestion' onClick={e=>this.handleSearchClick(e, 'query', 'sailor moon')}>sailor moon</p>
                                        <p className='search-suggestion' onClick={e=>this.handleSearchClick(e, 'category', 'pins')}>pins</p>
                                        <p className='search-suggestion' onClick={e=>this.handleSearchClick(e, 'query', 'overwatch')}>overwatch</p>
                                        <p className='search-suggestion' onClick={e=>this.handleSearchClick(e, 'category', 'memes')}>memes</p>
                                        {/* <p onClick={e=>this.handleSearchClick(e,  'query', 'my hero academia')}>my hero academia</p>
                                        <p onClick={e=>this.handleSearchClick(e, 'category', 'gaming')}>gaming</p>
                                        <p onClick={e=>this.handleSearchClick(e, 'category', 'keycaps')}>keycaps</p>
                                        <p onClick={e=>this.handleSearchClick(e, 'query', 'one punch man')}>one punch man</p>
                                        <p onClick={e=>this.handleSearchClick(e, 'query', 'sailor moon')}>sailor moon</p>
                                        <p onClick={e=>this.handleSearchClick(e, 'category', 'pins')}>pins</p>
                                        <p onClick={e=>this.handleSearchClick(e, 'query', 'overwatch')}>overwatch</p>
                                        <p onClick={e=>this.handleSearchClick(e, 'category', 'memes')}>memes</p> */}
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
                            <div className="navbar-icon cart-icon">{cartIcon} {this.state.cartQty !== 0 ? <p className='cart-badge'>{this.state.cartQty}</p> : null }</div>
                        {/* </Link>) : <div className="navbar-icon cart-icon">{cartIcon}<p className='cart-badge'>{this.props.cartItems ? this.props.cartItems.length : null} </p> </div> }             */}
                        </Link>) : <div className="navbar-icon cart-icon">{cartIcon} </div> }            
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