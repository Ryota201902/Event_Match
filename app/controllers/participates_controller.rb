class ParticipatesController < ApplicationController
	def create
		@event = Event.find(params[:event_id])
		@participate = current_user.participates.new(event_id: @event.id)
		@participates = Participate.where(user_id: @participate.user.id)
		@events = Event.all
		@participate.save
	end

	def destroy
		@event = Event.find(params[:event_id])
		participate = current_user.participates.find_by(event_id: @event.id)
		@events = Event.all
		participate.destroy
		redirect_to events_path
	end
end
