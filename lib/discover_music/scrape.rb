
class DiscoverMusic::Scrape
  attr_accessor :name, :albums, :url
  #the artist name chosen by the user will be passed in and then used to scrape a specific bio

  def self.url_conversion(name)
    @name = name
    chosen_artist = name.split(" ")
    name_length = chosen_artist.length - 1

      if name_length == 0

      else
        url_ending = ""
        counter = 1
        name_length.times do
          chosen_artist.insert(counter, "-")
          counter += 2
        end
      end
      @url = chosen_artist

  end

  def self.scraper
    doc = Nokogiri::HTML(open("https://www.udiscovermusic.com/artists-a-z/#{@url.join}"))
    artist = doc.search("div.digging-deeper-text").text.strip
    bio = artist.split
    better_bio = bio.join(" ")
    pretty_bio = better_bio.strip

    puts  "    " + artist
  end



end
