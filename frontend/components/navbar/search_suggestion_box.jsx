
import React, { Component } from 'react'
import { Link, withRouter, Redirect } from 'react-router-dom';


class SearchSuggestionBox extends React.Component {
    render() {
        return (
    
            <div className='search-suggestion-box'>
                <h3>Popular right now</h3>
                {/* <a href="http://www.google.com">Home</a> */}
                <p>gaming</p>
                <p>keycaps</p>
                <p>one punch man</p>
                <p>sailor moon</p>
                <p>pins</p>
                <p>overwatch</p>
                <p>memes</p>


                {/* <p onClick={e=>this.handleSearchClick( 'query', 'my hero academia')}>my hero academia</p>
                                <p onClick={e=>this.handleSearchClick('category', 'gaming')}>gaming</p>
                                <p onClick={e=>this.handleSearchClick('category', 'keycaps')}>keycaps</p>
                                <p onClick={e=>this.handleSearchClick('query', 'one punch man')}>one punch man</p>
                                <p onClick={e=>this.handleSearchClick('query', 'sailor moon')}>sailor moon</p>
                                <p onClick={e=>this.handleSearchClick('category', 'pins')}>pins</p>
                                <p onClick={e=>this.handleSearchClick('query', 'overwatch')}>overwatch</p>
                                <p onClick={e=>this.handleSearchClick('category', 'memes')}>memes</p> */}
            </div>
        )
    }
}

export default SearchSuggestionBox; 





