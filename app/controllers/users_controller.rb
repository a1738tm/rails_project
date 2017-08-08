class UsersController < ApplicationController
  before_action :require_username, only: [:create]

  # GET /
  def new
    @error = nil
    if session[:error] then
      @error = session[:error]
    end
    reset_session
  end

  # POST /users
  def create
    quiz_count = 10

    # 重複チェック
    if Result.new.exists(params[:username]) then
      session[:error] = 'その名前は既に使われています'
      redirect_to "/"
      return
    end

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
