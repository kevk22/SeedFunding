import React from 'react';
import HomeCategory from './home_category';
import { Link, withRouter } from 'react-router-dom';


export default class Homepage extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            curCategoryID: 1
        };
    }

    componentDidMount() {
        this.props.fetchProjects();
        this.props.fetchCategoryIndex();
    }

    render() {
        
        if (Object.values(this.props.categories).length === 0){
            return null;
        } 
        
        let category = Object.values(this.props.categories).map(category => {
            return(
                <div className="category-button" key={category.id} 
                    onClick={() => { this.setState({ curCategoryID: category.id }); }}
                > {category.name} </div>
            )
        });
      
        return(
            
        <div>
            <ul className="category-nav">
                {category}
            </ul>

            <HomeCategory users={this.props.users} projects={this.props.projects} categories={this.props.categories} 
                          catID={this.state.curCategoryID}  />
        </div>
        )
    }
}