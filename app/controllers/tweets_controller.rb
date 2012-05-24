class TweetsController < ApplicationController
  def index
    @tweet = Tweet.new
    @tweets = Tweet.order('created_at DESC')
  end
  
  def create
    @tweet = Tweet.new(params[:tweet])
    @tweet.save
    redirect_to tweets_path
  end
end
