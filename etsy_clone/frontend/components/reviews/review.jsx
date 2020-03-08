import React from 'react';


class Review extends React.Component {
    constructor(props) {
        super(props);

    }



    render() {
        const {reviewer, body, rating} = this.props;
        const sellerPhotoUrl = this.props.users[reviewer.id].photoUrls[0];


        return(
            <div className='review-container'>
                <div className='reviewer-info'>
                    <p>{reviewer.username}</p>
                    <img src={sellerPhotoUrl}/>
                </div>

                <div className='review-rating'>
                    // translate rating to number of stars
                </div>

                <div className='review-body'>
                    <p>{body}</p>
                </div>
            </div>

        )
    }
}

export default Review;