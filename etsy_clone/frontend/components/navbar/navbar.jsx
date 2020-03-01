import React from 'react';
import { Link } from 'react-router-dom';
import Popup from './popup'


class Navbar extends React.Component {
    constructor(props) {
        super(props);
        this.state = {showPopup: false};
        this.togglePopup = this.togglePopup.bind(this);
    }
    
   togglePopup() {
       this.setState({
           showPopup: !this.state.showPopup
       });
   }


    render() {
        const { currentUser, signOut, signIn } = this.props;

        const display = currentUser ? (
            <div>
                <button onClick={signOut}>Log Out</button>
            </div>
        ) : (
            <div>
                <button onClick={this.togglePopup}>Sign In</button>


                    {this.state.showPopup ?

                    <Popup
                        text='hello'
                        closePopup={this.togglePopup}
                        currentUser={currentUser}
                    /> : null
                    }
            </div>
        );

        return(
            <div>
                <form className="searchbar" /*onSubmit={}*/>
                    <input type="text" name="search" placeholder="Search for items or shops"/>
                    <button type="submit"><i className="fa fa-search" ></i></button>
                </form>
                
                { display }
            </div>
        )
    }
}

export default Navbar;