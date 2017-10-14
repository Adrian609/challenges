class Student < ActiveRecord::Base
  has_many :signups
  has_many :clinics, through: :signups

  validates :name, presence: true, uniqueness: true
end
