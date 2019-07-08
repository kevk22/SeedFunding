class Project < ApplicationRecord
    validates :name, :description, :body, :funding_goal, presence: true
    validates :funding_expiration, :category_id, :user_id, presence: true 

    # user references founder of project 
    belongs_to :user
    belongs_to :category 
    
    has_one_attached :image

    has_many :rewards
    has_many :pledges
end
