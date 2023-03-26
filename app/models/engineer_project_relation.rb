class EngineerProjectRelation < ApplicationRecord
  belongs_to :engineer
  belongs_to :project
end
