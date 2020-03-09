import React from 'react';


class Review extends React.Component {
    constructor(props) {
        super(props);
        this.state={
            authorId: this.props.review.author_id,
        }
    }


    // componentDidMount() {
    //    this.props.fetchUser(this.state.authorId);
    // }
    
    render() { 
        
        // const reviewerPhotoUrl = this.props.users[1].photoUrls[0];
        const review = this.props.review;
        // const author = ;
        const author = this.props.users[this.state.authorId];
        console.log(author)
        return(
            <div className='review-container'>
                <div className='reviewer-info'>
                    <p>{author.username}</p>
                    {/*<img src={reviewerPhotoUrl}/> */}
                </div>

                <div className='review-rating'>
                   {/* // translate rating to number of stars */}
                </div>

                <div className='review-body'>
                    <p>{review.body}</p>
                </div>
            </div>

        )
    }
}

export default Review;