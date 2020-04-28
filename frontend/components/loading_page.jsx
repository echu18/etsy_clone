import React from 'react';

class LoadingPage extends React.Component {

    render() {
        return (
          <div className="loading-container">
            {/* <div className='loading-overlay'></div> */}
            <div className='loading-content'>
                <img src={'spinning_doge.gif'}/>
                <h2>Loading...</h2>
            </div>
          </div>
        );
    }
}

export default LoadingPage;