import React from 'react';
import HomeCategory from './home_category';
import { Link, withRouter } from 'react-router-dom';


export default class Homepage extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            curCategoryID: null
        };
    }

    componentDidMount() {
        this.props.fetchProjects();
        this.props.fetchCategoryIndex();
        this.props.fetchUsers();
    }

    componentDidUpdate(prevProps) {
        if (prevProps.categories !== this.props.categories) {
            this.setState ({curCategoryID: Object.keys(this.props.categories).sort( (a,b) => (parseInt(a) < parseInt(b)))[0]})
        }
    }

    render() {
        if (Object.values(this.props.categories).length === 0){
            return null;
        } 
        if (Object.values(this.props.projects).length === 0) {
            return null;
        } 
        if (Object.values(this.props.users).length === 0) {
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
            <footer>
                <div className="footer-container">
                    <a href="https://www.linkedin.com/in/kevin-kumar/">
                        <img src={"linkedin.jpeg"} className="footer-pic-linkedin" />
                    </a>
                    <a href="https://github.com/kevk22">
                        <img src={"git.jpeg"} className="footer-pic-git" />
                    </a>
                </div>
            </footer>
        </div>
        )
    }
}