class Event < ApplicationRecord
	belongs_to :user
	attachment :event_image

	validates :event_image, presence: true
	validates :title, presence: true
	validates :date, presence: true
	validates :place, presence: true
	validates :capacity, presence: true
end
