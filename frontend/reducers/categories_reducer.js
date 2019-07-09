import { RECEIVE_CATEGORY_INDEX, RECEIVE_CATEGORY_PROJECTS } from '../actions/category_actions';

const categoryReducer = (state = {}, action) => {
    Object.freeze(state);

    switch (action.type) {
        case RECEIVE_CATEGORY_INDEX:
            return action.categories;
        case RECEIVE_CATEGORY_PROJECTS:
            return merge({}, state, action.projects);
        default:
            return state;
    }
};

export default categoryReducer;