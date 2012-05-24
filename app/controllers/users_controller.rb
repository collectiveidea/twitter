class UsersController < ApplicationController
  def show
    @tweets = Tweet.where(:username => params[:username]).page(params[:page]).per(10)
  end
end
