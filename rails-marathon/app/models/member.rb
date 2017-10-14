class Member < ApplicationRecord
  belongs_to :house
  validates_presence_of :first_name, :last_name, :house_id
end
