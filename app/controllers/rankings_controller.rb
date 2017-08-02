class RankingsController < ApplicationController

  # GET /ranking/show
  def show
    @username = params[:username]
  end

end
