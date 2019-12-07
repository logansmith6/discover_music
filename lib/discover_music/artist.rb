
class DiscoverMusic::Artists
  attr_accessor :name

  def self.pass_artist(name)
    @name = name
    @artists = DiscoverMusic::Scrape
    @artists.url_conversion(@name)
    @artists.scraper
  end

  #def self.pass_album(name)
  #  @name = name
  #  @albums = DiscoverMusic::Scrape
  #  @albums.url_conversion(@name)
  #  @albums.artist_albums

  #end

end
