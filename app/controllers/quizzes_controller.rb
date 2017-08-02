class QuizzesController < ApplicationController

  # GET /quizzes/show
  def show
  end

  # POST /quizzes/create
  def create
    # render :action => "show"
    @username = session[:username]
    redirect_to :controller => "results", :action => "show"
  end

end
