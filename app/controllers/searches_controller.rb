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
    @directions = MapQuest.get_directions('1500 Beacon Ridge Rd Apt 1006 Charlotte, NC 28210', '916 North Market Street, Troy, OH')
  end

  def movie_info
  end
end
