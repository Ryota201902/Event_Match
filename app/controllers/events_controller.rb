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
		@events = Event.all
	end

	def show
		@event = Event.find(params[:id])
		@post_comment = PostComment.new
	end

	private
		def event_params
			params.require(:event).permit(:event_image, :title, :date, :place, :capacity, :description)
		end

end
