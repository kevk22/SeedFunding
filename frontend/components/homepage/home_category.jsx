import React from 'react';

export default class HomeCategory extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            curCategory: this.props.categories[this.props.catID]
        }

    }

    componentDidUpdate(prevProps, prevState) {
        if (this.props.catID !== prevProps.catID) {
            this.setState({ curCategory: this.props.categories[this.props.catID] })
        }
    }

    render() {
        if(this.props.catID === null || this.state.curCategory === undefined) {
            return null
        };
       
        return(
        <div>
            <h3 className="category-name">{this.state.curCategory && this.state.curCategory.name}</h3>
                <br/>
            <div className="category-description">{this.state.curCategory && this.state.curCategory.description}</div>
                <br />
            <div className="featured-product-text">Featured Project</div>
                <br />
            <div className="featured-pic-container">
                    <img src={this.state.curCategory.name + ".jpeg"} className="featured-pic" />
            </div>
                <br/>
            <div className="featured-name">
                    {this.props.projects && this.props.projects[this.props.catID].name}
            </div>
                <br/>
            <div className="featured-description">
                {this.props.projects && this.props.projects[this.props.catID].description}
            </div>
                <br />
            <div className="featured-creator">
                By {this.props.users && this.props.users[this.props.catID].name}
            </div>
            
        </div>
        )
    }
}