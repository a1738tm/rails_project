class RankingsController < ApplicationController

  # GET /ranking
  def show
    #ranking = Result.new.get_ranking
    #@ranking = []
    #ranking.each do |r|
    #  logger.debug(r)
    #  @ranking.push({ :rank => r[0], :username => r[1], :score => r[2] })
    #end


    @ranking = Result.new.get_ranking
    @username = session[:username]
  end

end
