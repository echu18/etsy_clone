import React from "react";
import { connect } from "react-redux";
import { fetchProducts, clearProducts } from '../../actions/product_actions';
// import { clearReviews } from "../../actions/review_actions";
import ProductIndex from "./product_index";

const mapStateToProps = (state, ownProps) => ({
  products: Object.values(state.entities.products)
});

const mapDispatchToProps = (dispatch) => ({
  fetchProducts: () => dispatch(fetchProducts()), 
  clearProducts: () => dispatch(clearProducts())
});

export default connect(mapStateToProps, mapDispatchToProps)(ProductIndex);
