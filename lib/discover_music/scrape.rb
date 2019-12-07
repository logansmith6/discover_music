
class DiscoverMusic::Scrape
  attr_accessor :name, :albums, :url
  #the artist name chosen by the user will be passed in and then used to scrape a specific bio
  def initialize(name)
    @name = name
  end

  def self.scraper(name)
    chosen_artist = name.split(" ")
    name_length = chosen_artist.length - 1

      if name_length == 0

      else
        url_ending = ""
        counter = 1
        name_length.tiems do
          chosen_artist.insert(counter, "-")
          counter += 2
        end
      end
      @url = chosen_artist

  end

end
