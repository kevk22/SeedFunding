class Reward < ApplicationRecord
    validates :name, :description, :price, presence: true 

    belongs_to :project
    
    has_many :pledges
end
