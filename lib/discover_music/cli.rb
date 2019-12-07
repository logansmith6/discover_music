#CLI Controller

class DiscoverMusic::CLI

  #call method calls the proper methods, in order
  def call
    list_artists
    menu
    goodbye
  end

  #list_artists will list all available artists to choose from
  def list_artists
    @all_artists = DiscoverMusic::Scrape.all_artists
    puts "List of Artists:"
    puts @all_artists.length
    #puts "#{@all_artists.join(" ")}\n"
    #@artists = DiscoverMusic::Artists.all

  end

  #command line user interface menu
  def menu
    puts "Hello! Welcome to DiscoverMusic.\n"
    puts "If you would like to learn about an artist, go ahead and type their name.\n"
    puts "If you would like to see a list of the artists that we can tell you about, type list.\n"
    puts "To exit this program, type exit."
    chosen_artist = nil
    #loop to ask user for input until "exit" is typed
    while chosen_artist != "exit"
      chosen_artist = gets.strip.downcase
      case chosen_artist
      when "exit"
        goodbye
      when "list"
        list_artists
        puts "I can tell you about any of these artists, or you can type exit to quit."
      else

        @artists = DiscoverMusic::Artists.pass_artist(chosen_artist)
      end
    end

  end

  #goodbye says goodbye
  def goodbye
    puts "Thank you for using Discover Music!"
  end

end
