class QuizzesController < ApplicationController
  before_action :require_username

  # GET /quiz
  def show
    index = session[:index]

    if index >= session[:quizzes].length then
      redirect_to :controller => "results", :action => "show" and return
    end

    @quiz = Quiz.new.get_quiz(session[:quizzes][index])
    @number = index + 1
    @username = session[:username]
    @timer = session[:timer] || 30
  end

  # POST /quiz
  def create
    q = Quiz.new

    # 答え合わせ
    answer = params[:quiz]
    index = session[:index]
    quiz = q.get_quiz(session[:quizzes][index])
    if answer == quiz[:answer] then
      session[:score] += 1
    end

    # タイムオーバー
    session[:timer] = params[:timer].to_i
    @timer = session[:timer]
    if @timer <= 0 then
      index = session[:quizzes].length - 1
    end

    index += 1
    session[:index] = index
    if index >= session[:quizzes].length || @timer <= 0 then
      redirect_to :controller => "results", :action => "show" and return
    end

    @quiz = q.get_quiz(session[:quizzes][index])
    @number = index + 1
    @username = session[:username]

    redirect_to :action => "show"
  end

  private

  def require_username
    if session[:username].to_s.length == 0 then
      redirect_to "/"
    end
  end

end
