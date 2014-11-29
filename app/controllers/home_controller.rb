class HomeController < ApplicationController
  def index
  
   @posts = Post.find_with_reputation(:votes, :all)
   
  end

  private

  def getAllPost
     Post.all
  end 

  #Active Record Reputation System
  def vote
     value = params[:type] == "up" ? 1 : -1
     @post.add_or_update_evaluation(:votes, value, current_user)
     redirect_to :back, notice: "Thank you for voting"
  end
end
