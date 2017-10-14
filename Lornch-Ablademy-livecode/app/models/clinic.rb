class Clinic < ActiveRecord::Base
  has_many :comments
  has_many :signups
  has_many :students, through: :signups

  validates :name, presence: true
  validates :speaker, presence: true
end
