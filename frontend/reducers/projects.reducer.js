import merge from 'lodash/merge';

import { RECEIVE_PROJECTS, RECEIVE_PROJECT } from '../actions/project_actions';

const projectReducer = (state = {}, action) => {
    Object.freeze(state);

    switch(action.type) {
        case RECEIVE_PROJECTS:
            return action.projects;
        case RECEIVE_PROJECT:
            let newState = { [action.project.id]: action.project};
            return merge({}, state, newState);
        default: 
            return state;
    }
};

export default projectReducer;