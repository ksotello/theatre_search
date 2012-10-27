class ImdbInfo < ActiveRecord::Base
  # attr_accessible :title, :body
  def self.imdb(title)
  	@imdb = ImdbMovie.search("#{title}")
  end

  def self.plot
  	@imdb.plot
  end
end
