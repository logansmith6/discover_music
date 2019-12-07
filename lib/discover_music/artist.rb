
class DiscoverMusic::Artists
  attr_accessor :name

  def self.pass_artist(name)
    @name = name
    @artists = DiscoverMusic::Scrape
    @artists.url_conversion(@name)
    @artists.scraper
  end
end
