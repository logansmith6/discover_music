
class DiscoverMusic::Artists
  attr_accessor :name

  def self.pass_artist_bio(name)
    @name = name
    @bio = DiscoverMusic::Scrape
    @bio.url_conversion(@name)
    @bio.scraper
  end
end
