class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :vote,]

  before_filter :authenticate_user!, only: [:new, :create, :update, :destory, :vote, :upvote]

  respond_to :html

  def index
    redirect_to admin_path
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
    @post = Post.find_by_query(post_params[:title].downcase.gsub(" ", "-"))

    if @post.nil?
       @post = Post.new(post_params)
       @post.query = post_params[:title].downcase.gsub(" ", "-")
    else
       @post = Post.new(post_params)
       @post.query = post_params[:title].downcase.gsub(" ", "-") << Random.rand(99).to_s
    end

    # Find brand and assign one if doesn't existrandom.rand string ruby
    @brand = Brand.find_by(name: post_params[:brand_name])
    if @brand.nil?
      @brand = Brand.create(name: post_params[:brand_name], query: post_params[:brand_name].downcase.gsub(" ", "-"))
    end

    # Assign brand and user
    @post.brand = @brand
    @post.user = current_user #Second association is set here

    @post.save
    NotifyDro.notify_post_creation(current_user,@post).deliver
    redirect_to root_path, notice: "Thank you for your submission. It is under review. We will notify you if it is approved."
  end

  def update
    newQuery = params[:id]
    @post = Post.find_by_query(newQuery)
    @brand = @post.brand

    @post.update(post_params)
    #@post.update(query: post_params[:title].downcase.gsub(" ", "-"))

    @brand.update(name: post_params[:brand_name], query: post_params[:brand_name].downcase.gsub(" ", "-"))
    redirect_to admin_path
  end

  def destroy
    @post.destroy
    redirect_to :back
  end

#### custom utility methods ####
  
  #This might not be needed; delete if needed
  #def upvote
  #  post.upvotes.where(user_id: id).any?
  #end

  def admin_page
    @posts = Post.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 20)
  end

  private
    def set_post
      #@post = Post.find_with_reputation(:votes, :all).where(:id => params[:query_id]).first keep this here for future reference.
      #@post = Post.find_with_reputation(:votes, :all).where(:query => params[:id]).first

      @post = Post.find_by_query(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :product_name, :brand_name, :user_name, :description, :comment,:vote_count, :comment_count, :image, :type, :is_public, :votes, :query)
    end

    def comment_params
      params.require(:comment).permit(:user_id, :post_id, :content, :username)
    end
end
