# Memesy
[Memesy](https://fullstack-echu18.herokuapp.com/#/) is an online marketplace catered mainly toward the anime/gaming community. It is where users can buy or sell handmade goods, and discover new items.
Memesy is a clone of Etsy, a website for selling/buying custom, vintage and handmade goods.
<br/>

![Memesy Homepage](https://etsy-clone-dev.s3-us-west-1.amazonaws.com/readme-images/memesy-home.png)
<br/>
<br/>

# Technologies Used
Memesy was built with:

- Ruby on Rails
- PostgreSQL
- ActiveStorage
- React
- Redux
- AWS S3
<br/>
<br/>


# Features
<br/>

## Splash Page
-----------------
Users are able to view featured items on the main page of the website. The website features a navbar, which contains the button for the signup/login modal, and the cart.
<br/>
<br/>
![Login](https://etsy-clone-dev.s3-us-west-1.amazonaws.com/readme-images/login-resize.gif)
<br/>


### Featured Products
On the main page, users can view featured items.
<br/>
![Featured Items](https://etsy-clone-dev.s3-us-west-1.amazonaws.com/readme-images/memesy-featured.gif)
<br/>




## Navbar
-----------------
![Navbar](https://etsy-clone-seed.s3-us-west-1.amazonaws.com/readme/navbar.png)

The navbar is displayed on every page, and dynamically displays the user's login status, and if logged in, the number of items in the shopping cart. It is done by gathering session status from state, as well as updating cart items in the state whenever the cart is modified.

<pre><code>
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
</code></pre>

Product categories on the navbar each lead to corresponding product result pages.

Upon clicking the search bar, a popup will appear with search suggestions. Clicking on a search suggestion will automatically pre-fill the search bar with the search term, and then initate the search.


![Search suggestion](https://etsy-clone-seed.s3-us-west-1.amazonaws.com/readme/suggestion.png)



## Category Pages
-----------------
Several predefined category pages are available from the navbar. Clicking on these will lead to a product index page with that category, each with its own custom header.


![Clothing category](https://etsy-clone-seed.s3-us-west-1.amazonaws.com/readme/clothing.png)

<br/>
<br/>

![Cosplay category](https://etsy-clone-seed.s3-us-west-1.amazonaws.com/readme/cosplay.png)





## Product Page
-----------------
<br/>

![Product Page](https://etsy-clone-dev.s3-us-west-1.amazonaws.com/readme-images/memesy-product-page.png)
<br/>

### Product Info
* The product show page features a photo carousel that displays the product images
* Users can hover over images on the left, or click the left and right arrows to view each image.
<br/>

### Sidebar
* The top of the product page shows the store's name and the average review for the product. 
* The sidebar has a dropdown menu where users can select a quantity before adding the item to the cart.
* The 'message seller' button has a hoverable effect
<br/>



### Reviews
* Reviews for the product are shown below the photo carousel. 
* Each review has a star rating, and includes the reviewer's user profile image.
* If the user does not have a profile image, it defaults to the grey user icon.
<br/>

![Review](https://etsy-clone-dev.s3-us-west-1.amazonaws.com/readme-images/review.png)



<br/>
<br/>






## Cart
-----------------
<br/>

Each item in the user's cart is passed into a CartItemBar component, which displays the individual item along with information such as its seller, quantity, and price.

<pre><code> 
{cartItems.map((cartItem, idx) => {
                        return (
                          <CartItemBar
                            idx={idx}
                            cartItem={cartItem}
                            products={products}
                            {...this.props}
                            callbackFromParent={this.childCallback}
                          />
                        );
                      })}
                      </code></pre>


![Cart](https://etsy-clone-seed.s3-us-west-1.amazonaws.com/readme/cart.png)


