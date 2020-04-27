import React from 'react';

class LoadingPage extends React.Component {

    render() {
        return (
          <div className="loading-overlay">
            <img src={'spinning_doge.gif'}/>
            <h2>Loading...</h2>
          </div>
        );
    }
}

export default LoadingPage;