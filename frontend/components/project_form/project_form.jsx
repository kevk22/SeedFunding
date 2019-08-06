import React from 'react';


export default class ProjectForm extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            category: null,
            description: null,

        };
    }

    componentDidMount() {
        this.props.fetchCategoryIndex();
    }

    myFunction() {
        document.getElementById("myDropdown").classList.toggle("show");
    }

    render() {

        if(this.props.categories.length === 0) return null;
        
        return(
        <div>
            <form onSubmit={this.handleSubmit} className="project-form">
                <div className="create_form_text">
                    Pick a project category to connect with a specific community. You can always update this later.
                </div>

                    <div className="dropdown">
                        {/* <button className="dropbtn" onClick="myFunction()">Select your category
                            <i className="fa fa-caret-down"></i>
                        </button> */}
                        <div className="dropdown-content" id="myDropdown">
                            <a href="#">{this.props.categories[0].name}</a>
                            <a href="#">{this.props.categories[1].name}</a>
                            <a href="#">{this.props.categories[2].name}</a>
                            <a href="#">{this.props.categories[3].name}</a>
                            <a href="#">{this.props.categories[4].name}</a>
                            <a href="#">{this.props.categories[5].name}</a>
                            <a href="#">{this.props.categories[6].name}</a>
                            <a href="#">{this.props.categories[7].name}</a>
                        </div>
                    </div> 

                    <div className="create_form_text">
                        Describe what you’ll be creating.
                    </div>
                    <textarea className="textbox-desc" maxLength="135" rows="3" placeholder="Please enter a 135 character description"></textarea>
            </form>

        </div>
        )

    }
}

