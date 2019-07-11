import { connect } from 'react-redux';
import React from 'react';
import ProjectShow from './project';
import { fetchProject } from '../../actions/project_actions';
import { fetchCategoryIndex } from '../../actions/category_actions';

const mapStateToProps = (state, ownProps) => {
    const project = state.entities.projects[ownProps.match.params.project_id];
    const category = state.entities.categories[ownProps.match.params.project_id];

    return ({
        project: project,
        category: category
    });
};

const mapDispatchToProps = dispatch => {
    return {
    fetchProject: (id) => dispatch(fetchProject(id)),
    fetchCategoryIndex: () => dispatch(fetchCategoryIndex()),
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(ProjectShow);