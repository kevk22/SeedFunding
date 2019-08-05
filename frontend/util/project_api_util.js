export const fetchProjects = () => (
    $.ajax({
        method: "GET",
        url: "api/projects"
    })
);

export const fetchProject = id => (
    $.ajax({
        method: "GET",
        url: `api/projects/${id}`
    })
);

export const createProject = projectForm => (
    $.ajax({
        method: "POST",
        url: 'api/projects',
        data: projectForm
    })
);



