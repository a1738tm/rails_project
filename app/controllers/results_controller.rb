class ResultsController < ApplicationController

  before_action :require_username

  # GET /result
  def show
    if !session[:save] then
        session[:save] = true
        # TODO データベースに登録する
    end

    @score = session[:score] * 10
    # TODO 全人数を取得する
    @total = get_total
    # TODO 順位を取得する
    @rank = get_rank
    @username = session[:username]
  end

  private

  def require_username
    if session[:username].to_s.length == 0 then
      redirect_to "/"
    end
  end

  def get_total
    return 10
  end

  def get_rank
    return 3
  end

end
