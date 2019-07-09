import React from 'react';

export default class Homepage extends React.Component {
    constructor(props) {
        super(props);


    }

    componentDidMount() {
        this.props.fetchProjects();
        this.props.fetchCategoryIndex();
    }

    render() {
        let category = Object.values(this.props.categories).map(category => {
            return(
                <li className="category-button">{category.name}</li>
            )
        });
      

        
        return(
    
        <div>
            <ul className="category-nav">
                {category}
            </ul>
        </div>
        )
    }
}