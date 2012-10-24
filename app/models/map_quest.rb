MAPQUEST_KEY = 'Fmjtd%7Cluuanu0bl1%2C7n%3Do5-96b5df'

class MapQuest < ActiveRecord::Base
  # attr_accessible :title, :body
  def self.get_directions(origin, destination)
  	@origin = origin
  	@destination = destination
  	@directions = MapQuestDirections.new(@origin, @destination)
  end
end
