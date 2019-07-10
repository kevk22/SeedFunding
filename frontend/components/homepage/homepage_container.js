import { connect } from 'react-redux';
import React from 'react';
import { fetchProjects } from '../../actions/project_actions';
import { fetchCategoryIndex, fetchCategoryProjects} from '../../actions/category_actions';
import Homepage from './homepage';

const mapStateToProps = state => {
    return {
        users: state.entities.users,
        projects: Object.values(state.entities.projects),
        categories: state.entities.categories
    };
};

const mapDispatchToProps = dispatch => {
    return {
        fetchProjects: () => dispatch(fetchProjects()),
        fetchCategoryIndex: () => dispatch(fetchCategoryIndex())
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(Homepage);