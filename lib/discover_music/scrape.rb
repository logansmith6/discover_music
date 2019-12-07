
class DiscoverMusic::Scrape
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.scraper(name)
    chosen_artist = name.split(" ")
    name_length = chosen_artist.length - 1

  end

end 
