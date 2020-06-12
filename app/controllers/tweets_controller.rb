class TweetsController < ApplicationController
  def index
    @tweets = Tweet.includes(:user)
  end

  # def new
  #   @tweet = Tweet.new
  # end

  # def create
  #   Tweet.create(tweet_params)
  #   redirect_to root_path
  # end

  # def show
  #   @tweet = Tweet.find(params[:id])
  # end

  # def edit
  #   @tweet = Tweet.find(params[:id])
  # end

  # def update
  #   tweet = Tweet.find(params[:id])
  #   tweet.update(tweet_params)
  #   redirect_to tweet_path(post.id)
  # end

  # def destroy
  #   tweet = Tweet.find(params[:id])
  #   tweet.destroy
  #   redirect_to root_path
  # end

  # private
  # def post_params
  #   params.require(:tweet).permit(:name, :text).merge(user_id: current_user.id)
  # end

  
end
