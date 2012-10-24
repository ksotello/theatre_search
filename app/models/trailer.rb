class Trailer < ActiveRecord::Base
  # attr_accessible :title, :body
  def self.retrieve_movie_trailer(movie)
  	@trailer = Youtube::Video.find(:params => {:q => "#{movie}"+"trailer", :v => '2'})
  end

  def self.view_movie_trailer
  	@trailer = @trailer.entry[0].link[0].href
  end
end
