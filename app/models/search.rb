# == Schema Information
#
# Table name: searches
#
#  id         :integer          not null, primary key
#  city       :string(255)
#  state      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Search < ActiveRecord::Base
  attr_accessible :city, :listings, :name, :state
  def self.find_theatre(search)
  	if search
  		@location = search.split(",")
  		@city = @location[0]
  		@state = @location[1]
  		@listings = GoogleMovies47::Crawler.new({ :city => @city, :state => @state })
  	end
  end

  def self.theatres
    @theatres = @listings.theaters
  end

  def self.movies
    @movies = @listings.movies
  end
end
