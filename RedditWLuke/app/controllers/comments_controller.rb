class CommentsController < ApplicationController
  before_action :require_signed_in!, except: [:index]

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.new(comment_params)
    comment.user_id = current_user.id
    comment.user_id = params[:post_id]
    comment.parent_comment_id ||= 1 # the god user
    if comment.save
      redirect_to comment_url(comment)
    else
      flash[:errors] = comment.errors.full_messages
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:points, :description, :content, :parent_comment_id)
  end


end
