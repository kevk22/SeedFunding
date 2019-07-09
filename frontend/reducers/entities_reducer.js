import { combineReducers } from 'redux';

import usersReducer from './users_reducer';
import projectsReducer from './projects.reducer';
import categoriesReducer from './categories_reducer';

const entitiesReducer = combineReducers({
    users: usersReducer,
    projects: projectsReducer,
    categories: categoriesReducer
});

export default entitiesReducer;