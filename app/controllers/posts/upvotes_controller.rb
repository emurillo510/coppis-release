class Posts::UpvotesController < ApplicationController
	#before_action :authenticate_user!
	before_action :set_post

	def create
		logger.debug "POST CREATE #{@post.inspect}"
		@post.upvotes.where(user_id: current_user.id).first_or_create

		respond_to do |format|
			format.html { redirect_to @post }
			format.js
		end
	end

	def destroy

		logger.debug "POST DESTORY #{@post.inspect}"
		@post.upvotes.where(user_id: current_user.id).destroy_all

		respond_to do |format|
			format.html { redirect_to @post }
			format.js
		end
	end

	private

		def set_post
			@post = Post.find_by_query(params[:post_id])
		end

end