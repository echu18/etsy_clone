import React from 'react';
import { Link, withRouter, Redirect } from 'react-router-dom';
import Popup from '../signin_signup/popup';
import CategoryDropdownContainer from './categories/category_dropdown_container'
// import SearchSuggestionBox from './search_suggestion_box';
import {cartIcon, searchIcon, etsyLogo, giftIcon} from '../../../app/assets/images/svgs/icons'
import LoadingPage from "../loading_page";



class Navbar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      query: "",
      showPopup: false,
      searchSuggestion: false,
      showOverlay: "hide-overlay",
      cartQty: 0,
      rendered: false,
      receiveProducts: 0
    };

    this.togglePopup = this.togglePopup.bind(this);
    this.signOutAndClear = this.signOutAndClear.bind(this);
    this.redirectToHome = this.redirectToHome.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleChange = this.handleChange.bind(this);
    this.handleSearchClick = this.handleSearchClick.bind(this);
    this.toggleSuggestionBox = this.toggleSuggestionBox.bind(this);
    this.cartItemLength = this.cartItemLength.bind(this);
    this.clearSearchbar = this.clearSearchbar.bind(this);
    this.setSearchBar = this.setSearchBar.bind(this);
  }

    componentDidMount() {
        
        //  if (this.props.history.location === this.props.location) {
        //   this.setState({receiveProducts: 1, rendered: true})
        // }
        if (!!this.props.location.search) {
        let params = this.props.location.search;
        this.props.searchProducts(params)
          .then(this.setState({receiveProducts: 2}))
        }

        this.props
        .fetchCartItems()
        .then(this.setState({ cartQty: this.cartItemLength() }));

       
    }
    

    componentWillReceiveProps(nextProps, nextState) {
        
        // let receiveProducts;
        // if (this.state.receiveProducts === 0) {
        //     receiveProducts = this.state.receiveProducts + 1
        // } 

        if (this.props.products !== nextProps.products && this.state.receiveProducts === 0) {
            this.setState({receiveProducts: 1 });
        } else if (this.props.products === nextProps.products) {
            this.setState({receiveProducts: 0 });
        }

        // else if (this.props.products !== nextProps.products && this.state.receiveProducts !== 0) {
        //     this.setState({
        //       receiveProducts: 0,
        //     });
        // }

        //  && this.state.receiveProducts === 0
        // if ((this.props.products !== nextProps.products) && this.state.receiveProducts === 1) {
        //   this.setState({ receiveProducts: 0 });
        // }
    }

  componentDidUpdate(prevProps) {

    if (!this.props.location.pathname.includes("/search") && this.state.receiveProducts !== 2) {
      this.setState({ receiveProducts: 2 });
    }

    if (this.props.location.search !== prevProps.location.search && this.state.receiveProducts !== 2) {
      let params = this.props.location.search;
      // window.location.reload(), () => this.props.searchProducts(params).then(this.setState({ rendered: true }));
      this.props.searchProducts(params).then(this.setState({ rendered: true }));
    } else if (this.props.location.search === prevProps.location.search && this.state.receiveProducts !== 2) {
      this.setState({ receiveProducts: 2 });
    }

    if (this.props.cartItems != prevProps.cartItems) {
      this.setState({ cartQty: this.cartItemLength(), rendered: true });
    }

    if (this.props.products !== prevProps.products && Object.keys(prevProps.products).length !== 0 && this.state.receiveProducts === 1) {
         this.setState({ receiveProducts: 2, rendered: true });
    } 
        


    // if (this.props.location.search != prevProps.location.search) {
    //   let params = this.props.location.search;
    //   this.props.searchProducts(params)
    // }

    // if (this.props.cartItems != prevProps.cartItems) {
    //   this.setState({ cartQty: this.cartItemLength(), rendered: true });
    // }
  }

  togglePopup() {
    this.setState({
      showPopup: !this.state.showPopup,
    });
  }

  toggleSuggestionBox(e) {
    if (e) e.preventDefault();
    let suggestionBox = document.getElementsByClassName(
      "search-suggestion-box"
    )[0];

    if (this.state.searchSuggestion === false) {
      suggestionBox.classList.remove("suggestion-hidden");
      suggestionBox.classList.add("suggestion-visible");
      this.setState({ searchSuggestion: true, showOverlay: "show-overlay" });
    } else {
      suggestionBox.classList.remove("suggestion-visible");
      suggestionBox.classList.add("suggestion-hidden");
      this.setState({ searchSuggestion: false, showOverlay: "hide-overlay" });
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

  signOutAndClear() {
    if (this.props.location.pathname === '/') {
      this.props.signOut()
    } else {
      this.props.signOut().done(this.redirectToHome());
    }
    this.setState({ showPopup: false, receiveProducts: 1 })
  }


  redirectToHome() {
    // this.props.fetchSplashProducts()
    this.clearSearchbar()
    this.props.clearProducts();
    // this.resetForm()
    this.props.history.push("/");
  }



  handleSubmit(e) {
    // e.preventDefault();
    if (e.type === "keyup") {
      e.preventDefault();
      if (
        e.keyCode === 13 &&
        $(".searchbar-form input[type=text]").is(":focus")
      ) {
        if (this.state.suggestionBox){
          this.toggleSuggestionBox(e)
        }
        this.props.searchProducts(this.state.query);
        // this.props.history.push(`/search`)
        this.props.history.push(`/search?query=${this.state.query}`);
        
      }
    } else if (e.type === "click") {
      this.props.searchProducts(this.state.query);
      this.props.history.push(`/search?query=${this.state.query}`);
    }

    if (this.state.searchSuggestion === true) {
      this.toggleSuggestionBox();
    }
  }

  handleChange(e) {
    this.setState({ query: e.target.value });
  }

  clearSearchbar(){
    document.getElementsByClassName('searchbar-input')[0].value=''
  }

  setSearchBar(value){
    document.getElementsByClassName("searchbar-input")[0].value = value;
  }

  handleSearchClick(e, type, searchTerm) {
    e.preventDefault();
    // this.props.searchProducts({query: searchTerm})
    this.setSearchBar(searchTerm)
    this.props.history.push(`/search?${type}=${searchTerm}`);
    this.toggleSuggestionBox(e);
  }

  cartItemLength() {
    let count = 0;
    let cartItems = Object.values(this.props.cartItems);

    for (let i = 0; i < cartItems.length; i++) {
      count += cartItems[i].quantity;
    }

    return count;
  }

  render() {
    // window.scrollTo(0, 0);

 





    const { currentUserId, signOut, signIn, clearErrors } = this.props;
    // debugger
    // const categories = ['Jewelry & Accessories', 'Clothing & Shoes', 'Home & Living', 'Wedding & Party', 'Toys & Entertainment', 'Art & Collectibles', 'Craft Supplies', 'Vintage'];
    const categories = [
      "Jewelry & Clothing",
      "Home & Living",
      "Tech & Accessories",
      "Art & Collectibles",
      "Pins & Stickers",
      "Anime & Gaming",
      "Memes",
      "Cosplay",
    ];

    const display = currentUserId ? (
      <div>
        <p className="signin-signout" onClick={this.signOutAndClear}>
          Sign out
        </p>
      </div>
    ) : (
      <div>
        <p className="signin-signout" onClick={this.togglePopup}>
          Sign in
        </p>

        {this.state.showPopup ? (
          <Popup
            closePopup={this.togglePopup}
            currentUser={currentUserId}
            clearErrors={clearErrors}
          />
        ) : null}
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

    return (
      <div className="navbar max-width">
        <div className="navbar-inner inner">
          <div className="etsyLogo" onClick={this.redirectToHome}>
            <img
              className="memesy-logo"
              src="https://etsy-clone-dev.s3-us-west-1.amazonaws.com/splash-images/Memesy.png"
            />
            {/* {etsyLogo} */}
          </div>

          <div className="searchbar">
            <div className="searchbar-form">
              <form
                name="sb-form"
                id="sb-form"
                onSubmit={(e) => e.preventDefault()}
              >
                <input
                  type="text"
                  onClick={this.toggleSuggestionBox}
                  className="searchbar-input"
                  onChange={this.handleChange}
                  onKeyUp={(e) => this.handleSubmit(e)}
                  name="search"
                  placeholder="Search for items or shops"
                  autoComplete="off"
                />
                {/* onKeyUp={e => this.handleSubmit(e)} */}

                {/* <SearchSuggestionBox /> */}

                <div
                  className={this.state.showOverlay}
                  onClick={this.toggleSuggestionBox}
                  // onClick={this.toggleSuggestionBox}
                  // onKeyPress={e=>toggleSearchSuggestionBox(e)}
                ></div>
                <div className="search-suggestion-box suggestion-hidden">
                  <p
                    className="search-suggestion"
                    onClick={(e) =>
                      this.handleSearchClick(e, "query", "my hero academia")
                    }
                  >
                    my hero academia
                  </p>
                  <p
                    className="search-suggestion"
                    onClick={(e) =>
                      this.handleSearchClick(e, "category", "gaming")
                    }
                  >
                    gaming
                  </p>
                  <p
                    className="search-suggestion"
                    onClick={(e) =>
                      this.handleSearchClick(e, "category", "keycaps")
                    }
                  >
                    keycaps
                  </p>
                  <p
                    className="search-suggestion"
                    onClick={(e) =>
                      this.handleSearchClick(e, "query", "one punch man")
                    }
                  >
                    one punch man
                  </p>
                  <p
                    className="search-suggestion"
                    onClick={(e) =>
                      this.handleSearchClick(e, "query", "sailor moon")
                    }
                  >
                    sailor moon
                  </p>
                  <p
                    className="search-suggestion"
                    onClick={(e) =>
                      this.handleSearchClick(e, "category", "pins")
                    }
                  >
                    pins
                  </p>
                  <p
                    className="search-suggestion"
                    onClick={(e) =>
                      this.handleSearchClick(e, "query", "overwatch")
                    }
                  >
                    overwatch
                  </p>
                  <p
                    className="search-suggestion"
                    onClick={(e) =>
                      this.handleSearchClick(e, "category", "memes")
                    }
                  >
                    memes
                  </p>
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
              <div
                className="navbar-icon search-icon"
                onClick={this.handleSubmit}
              >
                {searchIcon}
              </div>
            </div>
          </div>

          {display}

          {!!this.props.currentUserId ? (
            <Link to={`/cart_items`}>
              <div className="navbar-icon cart-icon">
                {cartIcon}{" "}
                {this.state.cartQty !== 0 ? (
                  <p className="cart-badge">{this.state.cartQty}</p>
                ) : null}
              </div>
            </Link>
          ) : (
            <div className="navbar-icon cart-icon">{cartIcon} </div>
          )}
        </div>

        <div className="categories-bar">
          {categories.map((cat, idx) => {
            return <CategoryDropdownContainer header={cat} key={idx} clearSearchbar={this.clearSearchbar}/>;
          })}

          {/* <CategoryDropdownContainer header={"Gifts"} /> */}
        </div>

        {this.state.receiveProducts < 1 ? <LoadingPage /> : null}
      </div>
    );
  }
}

export default withRouter(Navbar);

