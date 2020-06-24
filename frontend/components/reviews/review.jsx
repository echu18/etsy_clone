import React from 'react';
import {starIcon} from '../../../app/assets/images/svgs/icons'

class Review extends React.Component {
    constructor(props) {
        super(props);
        this.state={
            authorId: this.props.review.author_id,
        }
        // this.rating= this.rating.bind(this)
    }


    // componentDidMount() {
    //    this.props.fetchUser(this.state.authorId);
    // }
    
    

   


    render() { 


        // const reviewerPhotoUrl = this.props.users[1].photoUrls[0];
        const review = this.props.review;
        // const author = ;
        const author = this.props.users[this.state.authorId];

        const rating = this.props.review.rating;

        const stars = [starIcon, starIcon, starIcon, starIcon, starIcon]
        const starSeq = stars.slice(0, rating)
        
        
        const reviewDate = new Date(this.props.review.updated_at)

        return(
            <div className='review-container'>
                {(Array.from(author.photoUrls).length === 0) ? <img src='https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/anon.png'/> : <img src={(Array.from(author.photoUrls)[0])}/>}
                
                
                    <div className='review-content'>
                        <div className='min-header'>
                            <h3 className='review-author'>{author.username}</h3>
                            {/* <h3 className='review-date'>Jan 23, 2020</h3> */}
                        {/* <h3 className='review-date'>{!!review.updated_at ? review.updated_at : "Jan 23, 2020" }</h3> */}
                        <h3 className='review-date'>{reviewDate.toDateString()}</h3>
                        </div>
                        
                        <div className='review-rating'>
                            {starSeq}

                        </div>

                        <div className='review-body'>
                            <p>{review.body}</p>
                    </div>
                </div>
            </div>

        )
    }
}

export default Review;