
class DiscoverMusic::Bio
  attr_accessor :bio
  @@all = []

  def initialize(bio)
    #@name = name
    @bio = bio
    @@all << self
  end


end
