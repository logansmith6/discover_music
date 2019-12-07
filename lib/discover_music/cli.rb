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
    puts "List of Artists:"
    puts <<-DOC.gsub /^\s*/, ''
    1. Jay-Z
    2. Maroon 5
    DOC
    @artists = DiscoverMusic::Artists.all
  end

  #command line user interface menu
  def menu
    puts "Type in the name of the artist that you would like to know more about (type exit to quit or menu to get back to the artist list):"
    chosen_artist = nil
    #loop to ask user for input until "exit" is typed
    while chosen_artist != "exit"
      chosen_artist = gets.strip.downcase
      case chosen_artist
      when "1"
        puts "..."
      when "2"
        puts "lll"
      when "menu"
        list_artists
      else
        puts "Invalid selection. Please try again!"
      end
    end
  end

  #goodbye says goodbye
  def goodbye
    puts "Thank you for using Discover Music!"
  end

end
