import React from 'react';


export default class ProjectForm extends React.Component {
    constructor(props) {
        super(props);
    }

    componentDidMount() {
        this.props.fetchCategoryIndex();
    }

    render() {

        if(this.props.categories.length === 0) return null;

        
        return(
        <div>stuff</div>
        )
    }
}

