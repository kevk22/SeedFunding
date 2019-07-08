import { combineReducers } from 'redux';

import usersReducer from './users_reducer';
import projectsReducers from './projects.reducer'

const entitiesReducer = combineReducers({
    users: usersReducer,
    projects: projectsReducers
});

export default entitiesReducer;