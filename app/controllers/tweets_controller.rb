class TweetsController < ApplicationController
  def index
    @tweet = Tweet.new
    @tweets = Tweet.all
  end
  
  def create
    @tweet = Tweet.new(params[:tweet])
    @tweet.save
    redirect_to tweets_path
  end
end
