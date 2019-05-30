class PostCommentsController < ApplicationController

	def create
	  event = Event.find(params[:event_id])
	  comment = current_user.post_comments.new(post_comment_params)
	  comment.event_id = event.id
	  comment.save
	  redirect_to event_path(event)
	end

	private

	def post_comment_params
	  params.require(:post_comment).permit(:user_id, :event_id, :comment)
	end

end
