class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @comments = Comment.all.order("created_at ASC")
    respond_with(@comments)
  end

  def show
    respond_with(@comment)
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
    respond_with(@comment)
  end

  def edit
  end

  def create
    @post = Post.find_by_query(params[:post_id])
    @comment = @post.comments.create!(comment_params)
    @comment.user_id = current_user.id #or whatever is your session name
    if @comment.save
      NotifyDro.notify_comment_creation(current_user,@post).deliver
      redirect_to @post
    else
      flash.now[:danger] = "error"
    end
  end

  def update
    @comment.update(comment_params)
    respond_with(@comment)
  end

  def destroy
    @comment.destroy
    respond_with(@comment)
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:user_id, :post_id, :content)
    end
end
