class Comment < ActiveRecord::Base
  belongs_to :clinic

  validates :body, presence: true
  validates :asker, presence: true
  validates :clinic, presence: true
end
