import { connect } from 'react-redux';
import { createProject } from '../../actions/project_actions';
import { fetchCategoryIndex } from '../../actions/category_actions';

import ProjectForm from './project_form';

const mapStateToProps = (state, ownProps) => {
 
    return({
        categories: Object.values(state.entities.categories)
    });
};

const mapDispatchToProps = dispatch => ({
    createProject: project => dispatch(createProject(project)),
    fetchCategoryIndex: () => dispatch(fetchCategoryIndex())
});

export default connect(mapStateToProps, mapDispatchToProps)(ProjectForm);