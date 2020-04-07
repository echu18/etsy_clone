import React from "react";
import { connect } from "react-redux";
import {fetchAllEtsyProducts} from "../../actions/product_actions";
// import { clearReviews } from "../../actions/review_actions";
import ProductIndex from "./product_index";

const mapStateToProps = (state, ownProps) => ({
  product: state.entities.products[ownProps.match.params.productId],
  reviews: state.entities.reviews,
  users: state.entities.users,
  currentUserId: state.session.currentUserId,
});

const mapDispatchToProps = (dispatch) => ({
  // fetchAllEtsyProducts: () => dispatch(fetchAllEtsyProducts())
});

export default connect(mapStateToProps, mapDispatchToProps)(ProductIndex);
