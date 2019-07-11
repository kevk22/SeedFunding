import React from 'react';


export default class ProjectShow extends React.Component {
    constructor(props) {
        super(props)
 
    }

    render() {

        return(
            <div>
                <div>
                    {this.props.project.name}
                </div>
                    <br/>

                <div>
                    <img src={this.props.category.name + ".jpeg"} className="featured-pic" />
                </div>
                <div>
                    {this.props.project.description}
                </div>
                    <br />
                <div>
                    {this.props.project.body}
                </div>
            </div>
        )
    }
}