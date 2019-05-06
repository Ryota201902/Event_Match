class Event < ApplicationRecord
	belongs_to :user
	has_many :post_comments, dependent: :destroy
	attachment :event_image

	validates :event_image, presence: true
	validates :title, presence: true
	validates :date, presence: true
	validates :place, presence: true
	validates :capacity, presence: true
end
