import React from 'react';

class LoadingPage extends React.Component {

    render() {
        return (
            <div className='loading-overlay'>
                <h2>Gomenasorry, the page you're looking for does not exist.</h2>
                <img src='https://i.imgflip.com/37rjp8.jpg' />
            </div>
        )
    }
}

export default LoadingPage;