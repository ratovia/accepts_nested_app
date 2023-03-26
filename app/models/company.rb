class Company < ApplicationRecord
  has_many :team_leaders
  accepts_nested_attributes_for :team_leaders
  has_many :projects
end
