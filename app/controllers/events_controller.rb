class EventsController < ApplicationController

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		@event.user_id = current_user.id
		if @event.save
		  redirect_to events_path
	    else
	      render :new
	    end
	end

	def index
	end

	def show
	end

	private
		def event_params
			params.require(:event).permit(:event_image, :title, :date, :place, :capacity, :description)
		end

end
