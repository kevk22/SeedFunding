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

        return(
        <div>
            <h3 className="category-name">{this.state.curCategory && this.state.curCategory.name}</h3>
            <br/>
            <div className="category-description">{this.state.curCategory && this.state.curCategory.description}</div>
        </div>
        )
    }
}