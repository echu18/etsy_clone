import React from 'react';
import { Link } from 'react-router-dom';

export default ({ currentUser, logOut }) => {
    const display = currentUser ? (
        <div>
            <h1>Hello, {currentUser.username}</h1>
            <button onClick={logOut}>Log Out</button>
        </div>
    ) : (
        <div>
            <Link to="/signup">Sign Up</Link>
            <Link to="/login">Log In</Link>
        </div>
    );

    return(
        <div>
            { display }
        </div>
    )
}
