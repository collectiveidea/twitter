class UsersController < ApplicationController
  def show
    @tweets = Tweet.order('created_at DESC').where(:username => params[:username]).page(params[:page]).per(10)
  end
end
