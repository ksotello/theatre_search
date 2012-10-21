class Search < ActiveRecord::Base
  attr_accessible :city, :listings, :name, :state
  def self.find_theatre(search)
  	if search
  		@location = search.split(",")
  		@city = @location[0]
  		@state = @location[1]
  		@listings = GoogleMovies47::Crawler.new({ :city => @city, :state => @state })
  		@listings = @listings.theaters.to_a
  	end
  end
end
