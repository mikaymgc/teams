class Team < ApplicationRecord

  has_many :members

  validates :team_name, presence: true
end
