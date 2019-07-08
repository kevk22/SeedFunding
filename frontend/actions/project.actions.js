import * as APIUtil from '../util/project_api_util';

export const RECEIVE_PROJECTS = "RECEIVE_PROJECTS";

const receiveProjects = (projects) => {
    return ({
        type: RECEIVE_PROJECTS,
        projects
    });
};


export const fetchProjects = () => dispatch => (
    APIUtil.fetchProjects().then(project => (dispatch(receiveProjects(project))))
);