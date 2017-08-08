class ResultsController < ApplicationController

  before_action :require_username

  # GET /result
  def show
    result = Result.new

    @score = session[:score] * 10
    @rank = result.get_rank(@score)

    if !result.exists(session[:username]) then
      # データベースに登録する
      result.register(session[:username], session[:score] * 10)
    end

    @total = result.get_total
    @username = session[:username]
  end

  private

  def require_username
    if session[:username].to_s.length == 0 then
      redirect_to "/"
    end
  end

end
