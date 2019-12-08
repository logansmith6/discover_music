
class DiscoverMusic::Scrape
  attr_accessor :name, :url
  #the artist name chosen by the user will be passed in and then used to scrape a specific bio


  #takes in a name from the artist class and converts it to be
  #compatible with the website
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
  #scraper class takes the converted url ending and uses it to scrape the
  #specific web address of the user's chosen artist
  def self.scraper
    doc = Nokogiri::HTML(open("https://www.udiscovermusic.com/artists-a-z/#{@url.join}"))
    bio = doc.search("div.digging-deeper-text").text.strip
    puts  "    " + bio
  end

  def self.all_artists
    doc = Nokogiri::HTML(open("https://www.udiscovermusic.com/artists-a-z/"))
    all_artists =  doc.search("a.artist-page-link").map{|individual| individual.text}
    #binding.pry
  end
end
