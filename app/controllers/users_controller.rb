class UsersController < ApplicationController

  # GET /users/new
  def new
  end

  # POST /users/create
  def create
    @username = params[:username]
    session[:username] = params[:username]
    redirect_to :controller => "quizzes", :action => "show"
  end

end
