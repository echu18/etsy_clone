import React from 'react';

class LoadingPage extends React.Component {

    render() {
        return (
          <div className="loading-container">
            <div className='loading-overlay'></div>
            <div className='loading-content'>
                <img className='loading-doge' src={'spinning_doge.gif'}/>
                <img className='loading-text' src={'loading-tremble.gif'}/>
                {/* <h2>Loading...</h2> */}
            </div>
          </div>
        );
    }
}

export default LoadingPage;