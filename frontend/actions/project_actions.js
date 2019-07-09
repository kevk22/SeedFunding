import * as APIUtil from '../util/project_api_util';

export const RECEIVE_PROJECTS = "RECEIVE_PROJECTS";
export const RECEIVE_PROJECT = "RECEIVE_PROJECT";

const receiveProjects = (projects) => {
    return ({
        type: RECEIVE_PROJECTS,
        projects
    });
};

const receiveProject = (project) => {
    return ({
        type: RECEIVE_PROJECT,
        project
    });
};


export const fetchProjects = () => dispatch => (
    APIUtil.fetchProjects().then(project => (dispatch(receiveProjects(project))))
);

export const fetchProject = id => dispatch => (
    APIUtil.fetchProject(id).then(project => (dispatch(receiveProject(project))))
);