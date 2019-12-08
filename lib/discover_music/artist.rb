
class DiscoverMusic::Artists
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.pass_artist_bio(name)

    @bio = DiscoverMusic::Scrape
    @bio.url_conversion(@name)
    @bio.scraper
  end
end
