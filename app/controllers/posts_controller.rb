class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :vote]

  before_filter :authenticate_user!, only: [:new, :create, :update, :destory, :vote]

  respond_to :html

  def index
   @posts = Post.find_with_reputation(:votes, :all).where(:is_public => true).order("votes DESC")
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
    @post = Post.find_by_query(params[:id])
  end

  def create
    @post = Post.new(post_params)

    # Assign query_id here, used for custom url links.
    @post.query = post_params[:title].downcase.gsub(" ", "-")

    # Find brand and assign one if doesn't exist
    @brand = Brand.find_by(name: post_params[:brand_name])
    if @brand.nil?
      @brand = Brand.create(name: post_params[:brand_name])
    end

    # Assign brand and user
    @post.brand = @brand
    @post.user = current_user #Second association is set here

    @post.save
    redirect_to root_path, notice: "Thank you for your submission. It is under review. We will notify you if it is approved."
  end

  def update
    newQuery = params[:id]
    @post = Post.find_by_query(newQuery)
    @post.update(post_params)
    @post.update(query: post_params[:title].downcase.gsub(" ", "-"))
    respond_with @post
  end

  def destroy
    @post.destroy
    redirect_to :back
  end

#### custom utility methods ####
  def vote
     value = params[:type] == "up" ? 1 : -1
     @post.add_or_update_evaluation(:votes, value, current_user)
     redirect_to :back
  end

  def admin_page
    @posts = Post.all
  end

  private
    def set_post
      #@post = Post.find_with_reputation(:votes, :all).where(:id => params[:query_id]).first keep this here for future reference.
      @post = Post.find_with_reputation(:votes, :all).where(:query => params[:id]).first
    end

    def post_params
      params.require(:post).permit(:title, :product_name, :brand_name, :user_name, :description, :comment,:vote_count, :comment_count, :image, :type, :is_public, :votes, :query)
    end

    def comment_params
      params.require(:comment).permit(:user_id, :post_id, :content, :username)
    end
end
