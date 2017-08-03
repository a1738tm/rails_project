class QuizzesController < ApplicationController

  def initialize
    # TODO 本来はデータベースから
    @quizzes = [
      { :question => '1番目の問題', :options => [ '選択肢1', '選択肢2', '選択肢3', '選択肢4' ], :answer => '1' },
      { :question => '2番目の問題', :options => [ '選択肢1', '選択肢2', '選択肢3', '選択肢4' ], :answer => '2' },
      { :question => '3番目の問題', :options => [ '選択肢1', '選択肢2', '選択肢3', '選択肢4' ], :answer => '3' },
      { :question => '4番目の問題', :options => [ '選択肢1', '選択肢2', '選択肢3', '選択肢4' ], :answer => '4' },
      { :question => '5番目の問題', :options => [ '選択肢1', '選択肢2', '選択肢3', '選択肢4' ], :answer => '1' },
      { :question => '6番目の問題', :options => [ '選択肢1', '選択肢2', '選択肢3', '選択肢4' ], :answer => '2' },
      { :question => '7番目の問題', :options => [ '選択肢1', '選択肢2', '選択肢3', '選択肢4' ], :answer => '3' },
      { :question => '8番目の問題', :options => [ '選択肢1', '選択肢2', '選択肢3', '選択肢4' ], :answer => '4' },
      { :question => '9番目の問題', :options => [ '選択肢1', '選択肢2', '選択肢3', '選択肢4' ], :answer => '1' },
      { :question => '10番目の問題', :options => [ '選択肢1', '選択肢2', '選択肢3', '選択肢4' ], :answer => '2' }
    ]
    super
  end

  before_action :require_username

  # GET /quiz
  def show
    index = session[:index]

    if index >= 10 then
      redirect_to :controller => "results", :action => "show" and return
    end

    @quiz = get_quiz(index)
    @number = index + 1
    @username = session[:username]
  end

  # POST /quiz
  def create
    # 未回答の場合は却下
    if params[:quiz].to_s.length == 0 then
      redirect_to :action => "show" and return
    end

    # 答え合わせ
    answer = params[:quiz]
    index = session[:index]
    quiz = get_quiz(index)
    if answer == quiz[:answer] then
      session[:score] += 1
    end

    index += 1
    session[:index] = index
    if index >= 10 then
      redirect_to :controller => "results", :action => "show" and return
    end

    @quiz = get_quiz(session[:index])
    @number = session[:index] + 1
    @username = session[:username]

    redirect_to :action => "show"
  end

  private

  def require_username
    if session[:username].to_s.length == 0 then
      redirect_to "/"
    end
  end

  def get_quiz(index)
    # TODO 本来はデータベースから
    return @quizzes[index]
  end

end
