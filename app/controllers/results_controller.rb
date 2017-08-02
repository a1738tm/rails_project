class ResultsController < ApplicationController

  # GET /result/show
  def show
    @username = session[:username]
  end

end
