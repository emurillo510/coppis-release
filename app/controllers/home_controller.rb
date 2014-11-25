class HomeController < ApplicationController
  def index
  
   @posts = getAllPost.order('created_at DESC')
   
  end

  private

  def getAllPost
     Post.all
  end 
end
