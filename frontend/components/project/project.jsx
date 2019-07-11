import React from 'react';


export default class ProjectShow extends React.Component {
    constructor(props) {
        super(props);
 
    }

    componentDidMount() {

    }

    render() {
        if (this.props.project === null || this.props.category === undefined) {
            return null;
        }

        if (this.props.project === undefined || this.props.category === null) {
            return null;
        }

        const expRuby = this.props.project.funding_expiration.split("-");
        const expYear = expRuby[0];
        const expMonth = expRuby[1];

        const curDate = new Date();
        const expDate = new Date(expYear, expMonth, 1);
        
        var oneDay = 24 * 60 * 60 * 1000;
        var diffDays = Math.round(Math.abs((expDate.getTime() - curDate.getTime()) / (oneDay)));        
        
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
                    <div className="goal-container">
                        <div className="funding_goal">{"$" + new Intl.NumberFormat().format(this.props.project.funding_goal)}</div>
                        <div className="goal-text">Funding Goal</div>
                        <div className="days-number">10</div>
                        <div className="goal-text">Backers</div>
                        <div className="days-number">{diffDays}</div>
                        <div className="goal-text">Days To Go</div>
                        <div className="all-or-none">All or nothing. This project will only be funded if it reaches its goal in {diffDays} days.</div>

                        <button className="back-this-button">Back This Project</button>
                    </div>
                    <img src={this.props.category.name + ".jpeg"} className="project-pic" />
                </div>

                    <br />
                <div className="about">About</div>
                <div className="project-body">
                    {this.props.project.body}
                </div>
            </div>
        )
    }
}