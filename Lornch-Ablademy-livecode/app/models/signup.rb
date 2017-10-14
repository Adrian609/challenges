class Signup < ActiveRecord::Base
  belongs_to :student
  belongs_to :clinic

  validates :student, presence: true
  validates :clinic, presence: true
end
