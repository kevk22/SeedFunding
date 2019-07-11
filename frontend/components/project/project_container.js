import { connect } from 'react-redux';
import React from 'react';
import ProjectShow from './project';

const mapStateToProps = state => {
    // return {
    //     users: state.entities.users,
    //     projects: state.entities.projects,
    //     categories: state.entities.categories
    // };
};

const mapDispatchToProps = dispatch => {
    // return {
    //     fetchProjects: () => dispatch(fetchProjects()),
    //     fetchCategoryIndex: () => dispatch(fetchCategoryIndex()),
    //     fetchUsers: () => dispatch(fetchUsers()),
    // };
};

export default connect(null,null)(ProjectShow);