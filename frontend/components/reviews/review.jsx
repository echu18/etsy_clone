import React from 'react';
import { starIcon, emptyStarIcon} from '../../../app/assets/images/svgs/icons'
import { Link, withRouter } from "react-router-dom";

import ReviewFormContainer from './review_form_container';
// import ReviewForm from './review_form';

class Review extends React.Component {
    constructor(props) {
        super(props);
        this.state={
            authorId: this.props.review.author_id,
            productId:this.props.productId,
            reviewText: this.props.review.body,
            rating: this.props.review.rating,
            starRating: [emptyStarIcon, emptyStarIcon, emptyStarIcon, emptyStarIcon, emptyStarIcon],
            prefill: this.props.review.body,
            editable: false,
            deletePopup: false
        }
        // this.rating= this.rating.bind(this)
        this.toggleEditOn = this.toggleEditOn.bind(this)
        this.toggleEditOff = this.toggleEditOff.bind(this)
        this.handleDelete = this.handleDelete.bind(this)
        this.confirmDelete = this.confirmDelete.bind(this)
        this.cancelDelete = this.cancelDelete.bind(this)
        this.cancelEdit = this.cancelEdit.bind(this)


        this.handleSubmit = this.handleSubmit.bind(this);
        this.starSeq = this.starSeq.bind(this);
    }


    componentDidMount() {
        if (this.state.starRating.length === 0) {
            this.starSeq(this.props.review.rating)
        }
    }
    
    

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

   cancelEdit(){
    //    e.preventDefault()
           this.setState({editable: false})   
   }


    handleSubmit(e) {

        if (e) e.preventDefault();


        this.props.editReview(this.props.review.id, {
            author_id: this.state.user_id,
            product_id: this.state.productId,
            rating: this.state.rating,
            body: this.state.reviewText
        }).then(() => window.location.reload())
    }


    handleInput(type) {
        return (e) => {
            this.setState({ [type]: e.target.value });
        };
    }


    starSeq(e, num) {
        // e.preventDefault()

        let starSeq = [];

        for (let i = 0; i < num; i++) {
            starSeq.push(starIcon)
        }

        for (let j = 5; j > num; j--) {
            starSeq.push(emptyStarIcon)
        }
        this.setState({ starRating: starSeq, rating: num })
    }



    editReviewForm() {
        return (
            <div className='review-content'>

                <form for='edit-review'>
                    <div className='min-header'>
                        {/* <h3 className='review-author'>{currentUser.username}</h3> */}
                        {/* <h3 className='review-date'>{todayDate.toDateString()}</h3> */}
                    </div>

                    <div className='review-form-stars'>

                        <span class='rev-star rev-star-1' onMouseEnter={e => this.starSeq(e, 1)}>{this.state.starRating[0]}</span>
                        <span class='rev-star rev-star-2' onMouseEnter={e => this.starSeq(e, 2)}>{this.state.starRating[1]}</span>
                        <span class='rev-star rev-star-3' onMouseEnter={e => this.starSeq(e, 3)}>{this.state.starRating[2]}</span>
                        <span class='rev-star rev-star-4' onMouseEnter={e => this.starSeq(e, 4)}>{this.state.starRating[3]}</span>
                        <span class='rev-star rev-star-5' onMouseEnter={e => this.starSeq(e, 5)}>{this.state.starRating[4]}</span>

                    </div>

                    <textarea onClick={this.props.currentUser ? null : this.toggleSigninPopup}
                        className="edit-review"
                        placeholder={this.state.prefill ? this.state.prefill : 'Write your review here...'}
                        value={this.state.prefill ? this.state.prefill : ""}
                        onChange={this.handleInput('reviewText')}
                    />

                    <div className='review-btns'>
                        <div onClick={this.handleSubmit} >Save Review</div><div onClick={this.cancelEdit}>Cancel</div>
                    </div>
                </form>
            </div>
        )
    }


    render() { 

        // const reviewerPhotoUrl = this.props.users[1].photoUrls[0];
        const review = this.props.review;
        const currentUserId = this.props.currentUserId;
        const author = this.props.users[this.state.authorId];
        if (author === undefined) return null;

        const rating = this.props.review.rating;

        const stars = [starIcon, starIcon, starIcon, starIcon, starIcon]
        const starSeq = stars.slice(0, rating)
        
        
        const reviewDate = new Date(this.props.review.updated_at)
        const reviewNumber = this.props.reviewNumber;

      

        return(
            <div className='review-container'>

                <div className={this.state.deletePopup === true ? 'delete-review-confirm' : 'hidden'}>
                    <h3>Confirm deletion?</h3>
                    <div>
                        <button onClick={this.confirmDelete}>Delete</button>
                        <button onClick={this.cancelDelete}>Cancel</button>
                    </div>
                </div>


                <div className='review-img-container'>
                    {(Array.from(author.photoUrls).length === 0) ? <img src='https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/anon.png'/> : <img src={(Array.from(author.photoUrls)[0])}/>}
                </div>
                
                {/* {this.state.editable ? <ReviewFormContainer prefill={review.body} review={review} toggleEditOff={this.toggleEditOff} productId={this.props.productId} currentUserId={currentUserId} rating={review.rating} type={'editReview'}/> : ( */}
                {this.state.editable ? this.editReviewForm() : (
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
                        <div className='review-edit-btns'>
                            <div onClick={this.toggleEditOn}>Edit</div><div onClick={this.handleDelete}>Delete</div>
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