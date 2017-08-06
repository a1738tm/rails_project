class UsersController < ApplicationController
  before_action :require_username, only: [:create]

  # GET /
  def new
    reset_session
  end

  # POST /users
  def create
    quiz_count = 10

    # TODO 重複チェック
    session[:username] = params[:username]

    session[:quizzes] = Quiz.new.get_quizzes(quiz_count)
    session[:index] = 0
    session[:score] = 0

    redirect_to :controller => "quizzes", :action => "show"
  end

  private

  def require_username
    if params[:username].to_s.length == 0 then
      redirect_to "/"
    end
  end

end
