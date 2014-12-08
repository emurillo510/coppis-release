class HomeController < ApplicationController
  def index
    @posts = Post.find_with_reputation(:votes, :all).where(:is_public => true).order("votes DESC").paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html
    end 
  end

  def recent
     @posts = Post.find_with_reputation(:votes, :all).where(:is_public => true).order("created_at DESC")

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
     @post = Post.find(params[:id])
     @post.add_or_update_evaluation(:votes, value, current_user)
     redirect_to :back
  end
end
