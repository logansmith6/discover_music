
class DiscoverMusic::Bio
  attr_accessor :name, :bio
  @@all = []

  def initialize(bio)
    #@name = name
    @bio = bio
    @@all << self
  end

  def self.pass_artist_bio(name)
    @name = name
    @bio = DiscoverMusic::Scrape
    @bio.url_conversion(name)
    @bio.scraper
  end
end
