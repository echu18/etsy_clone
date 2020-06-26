import React from 'react';
import Popup from '../signin_signup/popup';
import { starIcon, emptyStarIcon } from '../../../app/assets/images/svgs/icons'


class ReviewForm extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            user_id: this.props.currentUser,
            productId: this.props.productId,
            reviewText: "",
            rating: this.props.rating,
            starRating: [emptyStarIcon, emptyStarIcon, emptyStarIcon, emptyStarIcon, emptyStarIcon],
            showSigninPopup: false,
            prefill: ""
        }
        this.toggleSigninPopup = this.toggleSigninPopup.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        this.starSeq = this.starSeq.bind(this);
    }

    // componentDidUpdate() {
    //     if (this.props.currentUser !== this.state.user_id){
    //             this.setState({user_id: this.props.currentUser.id})
            
    //     }
    // }

 
    // componentDidMount(){
    //     this.setState({user_id:})
    // }


    toggleSigninPopup() {
        this.setState({
            showSigninPopup: !this.state.showSigninPopup
        });
    }



    handleSubmit(e) {
        
        if (e) e.preventDefault();

        if (this.props.type === 'editReview') {
            
            this.props.editReview(this.props.review.id, {
                author_id: this.state.user_id,
                product_id: this.state.productId,
                rating: this.state.rating,
                body: this.state.reviewText
            }).then(() => window.location.reload())
        } else if (this.props.type === 'createReview'){
            this.props.addReview({author_id: this.state.user_id,
                product_id: this.state.productId,
                rating: this.state.rating,
                body: this.state.reviewText
            })
            .then(() => window.location.reload())   
        }
    }



    handleInput(type) {
        return (e) => {
            this.setState({ [type]: e.target.value });
        };
    }
 

    starSeq(e, num){
        // e.preventDefault()

        let starSeq = [];

        for (let i=0; i < num; i++) {
            starSeq.push(starIcon)
        }

        for (let j= 5; j > num; j--){
            starSeq.push(emptyStarIcon)
        }
        this.setState({starRating: starSeq, rating: num})
    }

    render() {

        

        return (
            <div className='review-form-container'>
                {this.props.currentUser ? null : this.state.showSigninPopup ? (
                    <Popup
                        closePopup={this.toggleSigninPopup}
                        message={"Please sign in to leave a review"}
                        clearErrors={this.props.clearErrors}
                    />
                ) : null}


                {/* {(Array.from(currentUser.photoUrls).length === 0) ? <img src='https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/anon.png' /> : <img src={(Array.from(currentUser.photoUrls)[0])} />} */}

                    <h3>Add a review</h3>

                <div className='review-form-content'>
                    <form for='review-form'>
                        <div className='min-header'>
                            {/* <h3 className='review-author'>{currentUser.username}</h3> */}
                            {/* <h3 className='review-date'>{todayDate.toDateString()}</h3> */}
                        </div>

                        <div className='review-form-stars'>
                            {/* {this.state.starRating.forEach((star, i) => <span class='rev-star-1' onClick={e=> this.starSeq(e, i + 1)}>{star}</span>)} */}

                           <span class='rev-star rev-star-1' onMouseEnter={e => this.starSeq(e, 1)}>{this.state.starRating[0]}</span>
                            <span class='rev-star rev-star-2' onMouseEnter={e => this.starSeq(e, 2)}>{this.state.starRating[1]}</span>
                            <span class='rev-star rev-star-3' onMouseEnter={e => this.starSeq(e, 3)}>{this.state.starRating[2]}</span>
                            <span class='rev-star rev-star-4' onMouseEnter={e => this.starSeq(e, 4)}>{this.state.starRating[3]}</span>
                            <span class='rev-star rev-star-5' onMouseEnter={e => this.starSeq(e, 5)}>{this.state.starRating[4]}</span>

                        </div>

                        <textarea onClick={this.props.currentUser ? null : this.toggleSigninPopup}
                            className="add-review"
                            placeholder={this.props.prefill ? this.props.prefill : 'Write your review here...'}
                            onChange={this.handleInput('reviewText')} 
                        />
                        
                        <div className='review-btns'>
                            <div onClick={this.handleSubmit} >Save Review</div><div onClick={this.props.toggleEditOff}>Cancel</div> 
                        </div>
                    </form>
                </div>



            </div>
        )
    }
}

export default ReviewForm;