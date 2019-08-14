import React from 'react';
// import DatePicker from "react-datepicker";



export default class ProjectForm extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            title: "",
            category: "Arts",
            description: "",
            funding: "",
            body: "",
            end_date: "",
            image: null,
        };

        this.handleTitle = this.handleTitle.bind(this);
        this.handleCategory = this.handleCategory.bind(this);
        this.handleDescription = this.handleDescription.bind(this);
        this.handleFunding = this.handleFunding.bind(this);
        this.handleDate = this.handleDate.bind(this);
        this.handleBody = this.handleBody.bind(this);
        this.handleImage = this.handleImage.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    componentDidMount() {
        this.props.fetchCategoryIndex();
    }

    handleTitle(event) {
        this.setState({ title: event.target.value });
    }

    handleCategory(event) {
        this.setState({ category: event.target.value });
    }

    handleDescription(event) {  
        this.setState({ description: event.target.value });
    }

    handleFunding(event) {
        // let { value, min, max } = event.target.value;
        // value = Math.max(Number(min), Math.min(Number(max), Number(value)));

        this.setState({ funding: event.target.value });
    }

    handleDate(event) {
        this.setState({ end_date : event.target.value });
    }

    handleBody(event) {
        this.setState({ body: event.target.value });
    }

    handleImage(event) {
        this.setState({ image: event.target.files[0] });
    }

    handleSubmit(event) {
        event.preventDefault();
        const formData = new FormData();

        let catID;
        let funding_goal = Number(Math.abs(this.state.funding));

        this.props.categories.forEach(category => {
            if (this.state.category === category.name) catID = category.id;
        });

        formData.append('project[name]', this.state.title);
        formData.append('project[category_id]', catID);
        formData.append('project[funding_expiration]', this.state.end_date);
        formData.append('project[description]', this.state.description);
        formData.append('project[funding_goal]', funding_goal);
        formData.append('project[body]', this.state.body);
        formData.append('project[photo]', this.state.image);
        formData.append('project[user_id]', this.props.currentUser);
        
        this.props.createProject(formData)
            .then((action) => {
                return this.props.history.push(`/projects/${action.project.id}`);
            });

    }

  

    render() {

        if(this.props.categories.length === 0) return null;

        return(
        <div>
            <form onSubmit={this.handleSubmit} className="project-form">

                <div className="create_form_text">
                    Project Title
                </div>
                    <textarea className="title-desc" maxLength="40" placeholder="Title"
                        value={this.state.title} onChange={this.handleTitle}>    
                    </textarea>


                <div className="create_form_text">
                    Funding Goal
                </div>
                    <input type="number" min="1" className="title-desc" 
                        value={this.state.funding} onChange={this.handleFunding}>
                    </input>


                <div className="create_form_text">
                    Pick a project category to connect with a specific community. You can always update this later.
                </div>
                    <select className="dropdown-cat" value={this.state.value} onChange={this.handleCategory} >
                        {this.props.categories.map((cat,i) => (
                            <option key={i} value={cat.name}>{cat.name}</option>
                        ))}
                    </select>


                <div className="create_form_text">
                    Expiration Date 
                </div>
                    <input className="exp-date" id="date" type="date" value={this.state.end_date || ""} onChange={this.handleDate}
                            min="2020-02-22">        
                    </input>


                <div className="create_form_text">
                    Describe what you’ll be creating. This will be your subtitle.
                </div>
                    <textarea className="textbox-desc" maxLength="135" rows="3" placeholder="Please enter a 135 character description"
                        value={this.state.description} onChange={this.handleDescription}>
                    </textarea>


                <div className="create_form_text">
                    Tell people why they should be excited about your project. Get specific but be clear and be brief.
                </div>
                    <textarea className="textbox-desc" maxLength="1200" rows="8" 
                        placeholder="Describe what you're raising funds to do, why you care about it, how you plan to make it happen, and who you are."
                        value={this.state.body} onChange={this.handleBody}>
                    </textarea>


                <div className="create_form_text">
                    Add an image that clearly represents your project.
                </div>
                    <input className="img-upload" type="file" onChange={this.handleImage}/>
                <br/>
                    

                <button className="proj-submit" onClick={this.handleSubmit}>Create Project</button>
            </form>

        </div>
        )

    }
}

