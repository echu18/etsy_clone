import React from 'react'

class BioPopup extends React.Component {


    render() {
        return (
          <div>
            <div
              className="bio-popup-overlay"
              onClick={this.props.togglePopup}
            ></div>
            <div className={`bio-popup-text ${this.props.offset}`}>
              <h3>Thank you for your interest in Memesy!</h3>
              <p className="bio">
                Memesy is a project by{" "}
                <span className="bio-name">Jamie Chu</span>, a web developer and
                meme-lover from sunny California. To see more of her projects,
                please visit her{" "}
                <a href="https://www.jamiechu.dev" target="_blank">
                  website
                </a>
                .
              </p>
              <p>
                The products on this site are for demo purposes only and are
                unavailable for purchase (truly sorry!) Credits go to their
                original creators.
              </p>
              <button onClick={this.props.togglePopup}>Close</button>
            </div>
          </div>
        );
    }
}


export default BioPopup;