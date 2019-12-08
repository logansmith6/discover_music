#CLI Controller

class DiscoverMusic::CLI

  #call method calls the proper methods, in order
  def call
    puts "Hello! Welcome to DiscoverMusic.\n"
    menu
  end

  #list_artists will list all available artists to choose from
  def list_artists
    @all_artists = DiscoverMusic::Scrape.all_artists
    puts "\nList of Artists:"
    length = @all_artists.length - 6
    row1 = 0
    row2 = 1
    row3 = 2
    row4 = 3
    length.times do
      puts "#{@all_artists[row1]} | #{@all_artists[row2]} | #{@all_artists[row3]} | #{@all_artists[row4]}\n"
        row1 += 1
        row2 += 1
        row3 += 1
        row4 += 1
    end
    puts "\n" #i added this to make the interface look a little more clean
  end

  #command line user interface menu
  def menu
    puts "If you would like to learn about an artist, go ahead and type their name.\n"
    puts "If you would like to see a list of the artists that we can tell you about, type list (there are over 500!).\n"
    puts "To exit this program, type exit.\n"
    chosen_artist = nil
    #loop to ask user for input until "exit" is typed
    while chosen_artist != "exit"

      chosen_artist = gets.strip.downcase

      case chosen_artist
      when "exit"
        goodbye
      when "list"
        list_artists
        puts "I can tell you about any of these artists, or you can type 'exit' to quit."
      when "menu"
        menu
      else
        puts "\nMusical Biography of #{chosen_artist.capitalize}:"
        @artists = DiscoverMusic::CLI.pass_artist_bio(chosen_artist)
        puts "\nTry another artist or type 'menu' to return to the menu or 'exit' to quit."
        end
    end

  end

  def self.pass_artist_bio(name)
    @name = name
    @bio = DiscoverMusic::Scrape
    @bio.url_conversion(name)
    @bio.scraper
  end

  #goodbye says goodbye
  def goodbye
    puts "Thank you for using Discover Music!"
  end

end
