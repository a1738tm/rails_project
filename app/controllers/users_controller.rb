class UsersController < ApplicationController

  before_action :require_username, only: [:create]

  # GET /
  def new
    reset_session
  end

  # POST /users
  def create
    # TODO 重複チェック
    session[:username] = params[:username]

    # TODO ランダム生成
    session[:quizzes] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
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
