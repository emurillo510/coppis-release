class HomeController < ApplicationController
  def index
    @posts = Post.find_with_reputation(:votes, :all).where(:is_public => true)  

    respond_to do |format|
      format.html
    end 
  end

  def recent
     @posts = Post.find_with_reputation(:votes, :all).where(:is_public => true)    

    respond_to do |format|
      format.html
    end 
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
