class SubredditsController < ApplicationController
  before_action :require_signed_in!, except: [:index]

  def index
    @subreddits = Subreddit.all
  end

  def new
    @subreddit = Subreddit.new
  end

  def create
    @subreddit = Subreddit.new(subreddit_params)
    @subreddit.user_id = current_user.id
    if @subreddit.save
      redirect_to subreddit_url(@subreddit)
    else
      flash[:errors] = @subreddit.errors.full_messages
    end
  end

  def show
    @subreddit = Subreddit.find(params[:id])
  end

  def subreddit_params
    params.require(:subreddit).permit(:title, :description)
  end

end
