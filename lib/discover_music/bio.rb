
class DiscoverMusic::Bio
  attr_accessor :bio
  @@all = []
  #in the case of my program, the @@all class variable doesn't help with anything
  def initialize(bio)
    @bio = bio
    @@all << self
  end
  #prints the current instance's bio
  def printer
    puts "   " + @bio
  end

  def self.all
    @@all
  end
end
