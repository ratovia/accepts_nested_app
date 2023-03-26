class TeamLeader < ApplicationRecord
  has_many :engineers
  accepts_nested_attributes_for :engineers
  belongs_to :company
end
