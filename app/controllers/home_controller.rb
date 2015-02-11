class HomeController < ApplicationController
  def recent
    @posts = Post.trending.where(:is_public => true).paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html
    end 
  end

  def index
     @posts = Post.all.where(:is_public => true).order("created_at DESC").paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html
    end 
  end

  private
end
