export const fetchCategoryIndex = () => (
    $.ajax({
        method: "GET",
        url: "api/categories"
    })
);

export const fetchCategoryProjects = id => (
    $.ajax({
        method: "GET",
        url: `api/categories/${id}`
    })
);
