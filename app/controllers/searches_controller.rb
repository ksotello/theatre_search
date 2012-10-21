class SearchesController < ApplicationController
  def index
  end

  def result
  	flash[:notice] = params[:search]
  	@theatres = Search.find_theatre(params[:search])
  end
end
