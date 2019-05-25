class Event < ApplicationRecord
	belongs_to :user
	has_many :post_comments, dependent: :destroy
	has_many :participates, dependent: :destroy
	attachment :event_image
	validates :event_image, presence: true
	validates :title, presence: true, length: { maximum: 17 }
	validates :date, presence: true
	validates :place, presence: true, length: { maximum: 15 }
	validates :capacity, presence: true
	validates :description, presence: true, length: { maximum: 105 }

	def participated_by?(user)
		participates.where(user_id: user.id).exists?
	end
end
