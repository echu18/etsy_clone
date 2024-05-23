
import React from "react";
import LoadingPage from "./loading_page";

class GiftsPage extends React.Component {
  render() {
    return (
      <div className="gifts-page-container">
        <div className="gift-header inner" >
          <p className="gift-headline">Special gifts for a special someone</p>
          <p>(Could be you, treat yourself!)</p>
        </div>

        {/* <LoadingPage/> */}
      </div>
    );
  }
}

export default GiftsPage;