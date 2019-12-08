
class DiscoverMusic::Bio
  attr_accessor :bio
  @@all = []

  def initialize(bio)
    @bio = bio
    @@all << self
  end

  def printer
    puts "   " + @bio
  end

  def self.all
    @@all
  end
end
