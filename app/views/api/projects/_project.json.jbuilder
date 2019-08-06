json.extract! project, :id, :name, :description, :body, :funding_expiration,
    :funding_goal, :category_id, :user_id

if project.photo.attached? 
    json.photoUrl url_for(project.photo)
else 
    json.photoUrl ''
end
