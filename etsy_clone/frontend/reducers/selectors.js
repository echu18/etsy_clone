export const selectSeller = (state, id) => {
    return state.entities.users[id];
};
