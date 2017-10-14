class Recipe < ActiveRecord::Base
  validates :title, presence: true
  #validates :title, inclusion: { in: %w(brussels sprouts) }

  has_many :comments
end
