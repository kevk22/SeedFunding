class Project < ApplicationRecord
    validates :name, :description, :body, :funding_goal, presence: true
    validates :funding_expiration, :category_id, :user_id, presence: true 

    belongs_to :user
    belongs_to :category 

    

end
