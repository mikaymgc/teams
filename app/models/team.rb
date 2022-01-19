class Team < ApplicationRecord

  #アソシエーション記述

  validates :team_name, presence: true
end
