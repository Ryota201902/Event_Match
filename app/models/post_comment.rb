class PostComment < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :comment, presence: true, length: { maximum: 86 }
end
