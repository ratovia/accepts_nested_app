class Engineer < ApplicationRecord
  has_many :engineer_project_relations
  has_many :projects, through: :enginner_project_relations
  belongs_to :team_leader, optional: true
end
