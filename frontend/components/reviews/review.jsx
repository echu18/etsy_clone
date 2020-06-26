import React from 'react';
import {starIcon} from '../../../app/assets/images/svgs/icons'
import { Link, withRouter } from "react-router-dom";

import ReviewFormContainer from './review_form_container';
// import ReviewForm from './review_form';

class Review extends React.Component {
    constructor(props) {
        super(props);
        this.state={
            authorId: this.props.review.author_id,
            editable: false,
            deletePopup: false
        }
        // this.rating= this.rating.bind(this)
        this.toggleEditOn = this.toggleEditOn.bind(this)
        this.toggleEditOff = this.toggleEditOff.bind(this)
        this.handleDelete = this.handleDelete.bind(this)
        this.confirmDelete = this.confirmDelete.bind(this)
        this.cancelDelete = this.cancelDelete.bind(this)
    }


    // componentDidMount() {
    //    this.props.fetchUser(this.state.authorId);
    // }
    
    

   toggleEditOn(){
    //    this.props.toggleEditOn()
       this.setState({editable: true})
   }

   toggleEditOff(){
    //    this.props.toggleEditOff()
       this.setState({editable: false})
   }


   handleDelete(){
        this.setState({ deletePopup: true })
    }

   confirmDelete(){
    //    e.preventDefault()
        this.props.deleteReview(this.props.review.id)
            .then(this.setState({ deletePopup: false }))
            .then(() => window.location.reload()) 
   }

   cancelDelete(){
    //    e.preventDefault()
           this.setState({deletePopup: false})
       
   }

    render() { 

        // const reviewerPhotoUrl = this.props.users[1].photoUrls[0];
        const review = this.props.review;
        const currentUserId = this.props.currentUserId;
        const author = this.props.users[this.state.authorId];

        const rating = this.props.review.rating;

        const stars = [starIcon, starIcon, starIcon, starIcon, starIcon]
        const starSeq = stars.slice(0, rating)
        
        
        const reviewDate = new Date(this.props.review.updated_at)
        const reviewNumber = this.props.reviewNumber;





        return(
            <div className='review-container'>

                <div className={this.state.deletePopup === true ? 'delete-review-confirm' : 'hidden'}>
                    <h3>Confirm deletion</h3>
                    <button onClick={this.confirmDelete}>Delete</button>
                    <button onClick={this.cancelDelete}>Cancel</button>
                </div>


                <div className='review-img-container'>
                    {(Array.from(author.photoUrls).length === 0) ? <img src='https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/anon.png'/> : <img src={(Array.from(author.photoUrls)[0])}/>}
                </div>
                
                {this.state.editable ? <ReviewFormContainer prefill={review.body} review={review} toggleEditOff={this.toggleEditOff} productId={this.props.productId} currentUserId={currentUserId} rating={review.rating} type={'editReview'}/> : (
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

                        <div className='review-body' id={'review' + review.id}>
                            <p>{review.body}</p>
                        </div>

                    {currentUserId === author.id ? 
                        <div>
                            <button onClick={this.toggleEditOn}>Edit</button><button onClick={this.handleDelete}>Delete</button>
                        </div>
                        : null}

                        {reviewNumber !== 0 ? null : (this.state.editable) ? null: <ReviewFormContainer productId={this.props.productId} type={'createReview'}/>}
                    </div>
                )}
            </div>

        )
    }
}

export default Review;