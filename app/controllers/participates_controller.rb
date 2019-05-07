class ParticipatesController < ApplicationController
	def create
		event = Event.find(params[:event_id])
		participate = current_user.participates.new(event_id: event.id)
		participate.save
		redirect_back(fallback_location: events_path)
	end

	def destroy
		event = Event.find(params[:event_id])
		participate = current_user.participates.find_by(event_id: event.id)
		participate.destroy
		redirect_back(fallback_location: events_path)
	end
end
