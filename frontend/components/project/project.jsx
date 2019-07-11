import React from 'react';


export default class ProjectShow extends React.Component {
    constructor(props) {
        super(props)
 
    }

    render() {

        return(
            <div>
                <div className="project-header-container">
                    <div className="project-header-row">
                        <div className="project-title"> {this.props.project.name} </div>
                        <div className="project-description">{this.props.project.description}</div>
                    </div>
                </div>
                    <br/>

                <div>
                    <img src={this.props.category.name + ".jpeg"} className="project-pic" />
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