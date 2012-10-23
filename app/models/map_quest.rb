class MapQuest < ActiveRecord::Base
  # attr_accessible :title, :body
  def self.get_directions(origin, destination)
  	@origin = location
  	@destination = destination
  	directions = MapQuestDirections.new(@origin, @destination)
  end
end
