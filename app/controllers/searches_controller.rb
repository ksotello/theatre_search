class SearchesController < ApplicationController
  def index
  end

  def result
  	flash[:notice] = params[:search]
  	@theatres = Search.find_theatre(params[:search])
  	@locations = Search.theatres
  end

  def info
  	flash[:notice] = params[:name]
    @locations = Search.theatres
    @trailer = Trailer.retrieve_movie_trailer(params[:name])
  end
end
