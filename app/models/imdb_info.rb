class ImdbInfo < ActiveRecord::Base
  # attr_accessible :title, :body
  def self.imdb(title)
  	@imdb = Myimdb::Search::Google.search_text("#{title}", :restrict_to=> 'imdb.com')[0]
	@result = Myimdb::Scraper::Imdb.new(@imdb[:url])
  end
end
