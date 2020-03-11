import React from 'react';
import CategoryDropdown from './category_dropdown';
import { connect } from 'react-redux';
// import { signUp, signIn, signOut, clearErrors } from '../../actions/session_actions';




const mapStateToProps = (state, ownProps) => ({
// map headers, text, subcat titles
    // header: this.state.header
})


const mapDispatchToProps = dispatch => ({

})

export default connect(mapStateToProps, mapDispatchToProps)(CategoryDropdown)


