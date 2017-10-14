class Comment < ActiveRecord::Base
  belongs_to :recipe
  validates :body, presence: true, length: { maximum: 140 }
end
