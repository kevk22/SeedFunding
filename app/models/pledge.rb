class Pledge < ApplicationRecord
    validates :amount, :user_id, :project_id, :reward_id, presence: true 

    belongs_to :user
    belongs_to :project
    belongs_to :reward
end
