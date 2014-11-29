class HomeController < ApplicationController
  def index
  
   @posts = getAllPost.order('created_at DESC')

  respond_to do |format|
    format.html
  end
   
  end

  private

  def getAllPost
     Post.all
  end 
end
