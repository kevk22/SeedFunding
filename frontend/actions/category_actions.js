import * as APIUtil from "../util/category_api_util";

export const RECEIVE_CATEGORY_INDEX = "RECEIVE_CATEGORY_INDEX";
export const RECEIVE_CATEGORY_PROJECTS = "RECEIVE_CATEGORY_INDEX";

const receiveCategoryIndex = categories => ({
    type: RECEIVE_CATEGORY_INDEX,
    categories
});

const receiveCategoryProjects = projects => ({
    type: RECEIVE_CATEGORY_PROJECTS,
    projects
});


export const fetchCategoryIndex = () => dispatch => (
    APIUtil.fetchCategoryIndex().then(category => dispatch(receiveCategoryIndex(category)))
);

export const fetchCategoryProjects = (id) => dispatch => (
    APIUtil.fetchCategoryProjects(id).then(project => dispatch(receiveCategoryProjects(project)))
);

