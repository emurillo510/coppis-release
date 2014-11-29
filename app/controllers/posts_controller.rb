class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :vote]
  before_filter :authenticate_user!

  respond_to :html

  def index
    @posts = Post.all
    respond_with(@posts)
  end

  def show
    respond_with(@post)
  end

  def new
    @post = Post.new
    respond_with(@post)
  end

  def edit
  end

  def create
    @post = Post.new(post_params)

    #build brand information from post
    @brand = Brand.find_by(name: post_params[:brand_name])
    if @brand.nil?
      @brand = Brand.create(name: post_params[:brand_name])
      @post = @brand.posts.build(post_params)
    else
      @post = @brand.posts.build(post_params)
    end

    @post.save
    respond_with(@post)
  end

  def update
    @post.update(post_params)
    @user.update_attribute(:image, params[:user][:image])
    respond_with(@post)
  end

  def destroy
    @post.destroy
    respond_with(@post)
  end

  def vote
     value = params[:type] == "up" ? 1 : -1
     @post.add_or_update_evaluation(:votes, value, current_user)
     redirect_to :back, notice: "Thank you for voting"
  end


  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :product_name, :brand_name, :user_name, :description, :comment,:vote_count, :comment_count, :image, :type)
    end
end
