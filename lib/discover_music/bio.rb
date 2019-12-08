
class DiscoverMusic::Bio
  attr_accessor :bio

  def initialize(bio)
    @bio = bio
  end

  def printer
    puts "   " + @bio
  end
end
