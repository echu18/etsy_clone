import React from 'react';
import { withRouter, Redirect, Route } from 'react-router-dom';
import { connect } from 'react-redux';

const Auth = ({ component: Component, path, loggedIn, exact }) => (
    <Route
        path={path}
        exact={exact}
        render={props => (
            loggedIn ? <Redirect to="/" /> : <Component {...props} /> 
        )}
    />
);

const mapStateToProps = state => {
    return { loggedIn: Boolean(state.session.id)};
};

export const AuthRoute = withRouter(connect(mapStateToProps)(Auth)
);