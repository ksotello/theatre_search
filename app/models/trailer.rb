class Trailer < ActiveRecord::Base
  # attr_accessible :title, :body
  def self.retrieve_movie_trailer(movie)
  	@trailer = Youtube::Video.find(:params => {:q => "#{movie}"+"trailer", :v => '2'})
  	@trailer = @trailer.entry[0].link[0].href
  end
end
