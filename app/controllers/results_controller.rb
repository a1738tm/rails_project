class ResultsController < ApplicationController

  before_action :require_username

  # GET /result
  def show
    if !session[:save] then
      # TODO 重複チェック
      session[:save] = true
      # データベースに登録する
      Result.new do |r|
        r.username = session[:username]
        r.score = session[:score] * 10
        r.save
      end
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
