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
		if Participate.where(event_id: params[:id]).pluck(:user_id).include?(current_user.id)
			@event = Event.find(params[:id])
			@post_comment = PostComment.new
		else
			redirect_back(fallback_location: events_path)
		end
	end

	def destroy
		event = Event.find(params[:id])
		event.destroy
		redirect_to events_path
	end

	private
		def event_params
			params.require(:event).permit(:event_image, :title, :date, :place, :capacity, :description)
		end

end
