class PagesController < ApplicationController
	
   def queue	
      @posts = Post.find_with_reputation(:votes, :all).where(:is_public => false)    

	  respond_to do |format|
	     format.html
	  end
   end

   private

   #Active Record Reputation System
   def vote
      value = params[:type] == "up" ? 1 : -1
      @post.add_or_update_evaluation(:votes, value, current_user)
      redirect_to :back
   end
end

   def guidelines
   end

   def privacypolicy
   end

   def tos
   end
   
   def about
   end

   def contact
   end