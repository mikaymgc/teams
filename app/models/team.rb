class Team < ApplicationRecord

  has_many :members, dependent: :destroy

  validates :team_name, presence: true
end
