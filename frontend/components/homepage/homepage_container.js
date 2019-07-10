import { connect } from 'react-redux';
import React from 'react';
import { fetchProjects } from '../../actions/project_actions';
import { fetchUsers } from '../../actions/session_actions';
import { fetchCategoryIndex, fetchCategoryProjects} from '../../actions/category_actions';
import Homepage from './homepage';

const mapStateToProps = state => {
    return {
        users: state.entities.users,
        projects: state.entities.projects,
        categories: state.entities.categories
    };
};

const mapDispatchToProps = dispatch => {
    return {
        fetchProjects: () => dispatch(fetchProjects()),
        fetchCategoryIndex: () => dispatch(fetchCategoryIndex()),
        fetchUsers: () => dispatch(fetchUsers()),
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(Homepage);