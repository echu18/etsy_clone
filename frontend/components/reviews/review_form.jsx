import React from 'react';
import Popup from '../signin_signup/popup';
import { starIcon, emptyStarIcon } from '../../../app/assets/images/svgs/icons'


class ReviewForm extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            user_id: this.props.currentUser,
            reviewText: "",
            rating: null,
            starRating: [emptyStarIcon, emptyStarIcon, emptyStarIcon, emptyStarIcon, emptyStarIcon],
            showSigninPopup: false
        }
        this.toggleSigninPopup = this.toggleSigninPopup.bind(this);
        this.starSeq = this.starSeq.bind(this);
    }

    // componentDidUpdate() {
    //     if (this.props.currentUser){

    //         if (this.props.currentUser.id !== this.state.user_id) {
    //             this.setState({user_id: this.props.currentUser.id})
    //         }
    //     }
    // }

 


    toggleSigninPopup() {
        this.setState({
            showSigninPopup: !this.state.showSigninPopup
        });
    }



    handleSubmit(e) {
        if (e) e.preventDefault();
        this.props.addReview({author_id: this.state.user_id,
                                product_id: this.props.product.id,
                                rating: this.state.rating,
                                reviewText: this.state.reviewText

        })

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
        this.setState({starRating: starSeq})
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

                <div className='review-content'>
                    <form for='review-form' onSubmit={this.handleSubmit}>
                        <div className='min-header'>
                            <h3 className='review-author'>{currentUser.username}</h3>
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
                            placeholder={'Write your review here...'}
                            onChange={this.handleInput('reviewText')} 
                        />

                        <button></button>
                    </form>
                </div>



            </div>
        )
    }
}

export default ReviewForm;