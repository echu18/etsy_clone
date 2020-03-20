export const selectUser = (state, id) => {
    return state.entities.users[id];
};


export const selectReview = ({ reviews }, reviewId) => {
    return reviews[reviewId] || { reviewIds: [] };
};

// export const selectReviewsForBench = ({ benches, reviews }, bench) => {
//     return bench.reviewIds.map(reviewId => reviews[reviewId]);
// };
// export const asArray = ({ benches }) => (
//     Object.keys(benches).map(key => benches[key])
// );
