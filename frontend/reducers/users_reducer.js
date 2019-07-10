import merge from 'lodash/merge';

import { RECEIVE_CURRENT_USER, RECEIVE_ALL_USERS } from '../actions/session_actions';

const usersReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_ALL_USERS:
            return action.payload.users;
        case RECEIVE_CURRENT_USER:
            return merge({}, state, { [action.currentUser.id]: action.currentUser });
        default:
            return state;
    }
};

export default usersReducer;
