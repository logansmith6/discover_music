#CLI Controller

class DiscoverMusic::CLI

  def call
    list_artists
    menu
    goodbye
  end

  def list_artists
    puts "List of Artists:"
    puts <<-DOC.gsub /^\s*/, ''
    1. Jay-Z
    2. Maroon 5
    DOC
  end

  def menu
    puts "Type in the name of the artist that you would like to know more about:"
    chosen_artist = nil

    while chosen_artist != "exit"
      chosen_artist = gets.strip
      case chosen_artist
      when "1"
        puts "..."
      when "2"
        puts "lll"
      end
    end
  end

    def goodbye
      puts "Thank you for using Discover Music!"
    end

end
