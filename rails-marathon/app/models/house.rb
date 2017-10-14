class House < ApplicationRecord
  validates_presence_of :name, :author, :source
  has_many :members
end
