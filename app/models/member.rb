class Member < ApplicationRecord

  belongs_to :team

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :gender
  belongs_to_active_hash :technical_grade
  belongs_to_active_hash :referee_grade
  belongs_to_active_hash :insurance

  validates :name, presence: true

end
