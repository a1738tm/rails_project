class RankingsController < ApplicationController

  def initialize
    # TODO 本来はデータベースから
    @users = [
      { :username => 'A', :score => 100 },
      { :username => 'B', :score => 90 },
      { :username => 'C', :score => 80 },
      { :username => 'D', :score => 70 },
      { :username => 'E', :score => 60 },
      { :username => 'F', :score => 50 },
      { :username => 'G', :score => 40 },
      { :username => 'H', :score => 30 },
      { :username => 'I', :score => 20 },
      { :username => 'J', :score => 10 }
    ]
    super
  end

  # GET /ranking
  def show
    # TODO データベースからユーザ一覧を取得する
    @ranking = get_ranking
    @username = session[:username]
  end

  private

  def get_ranking
    return @users
  end

end
