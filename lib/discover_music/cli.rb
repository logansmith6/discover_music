#CLI Controller

class DiscoverMusic::CLI

  def call
    list_artists
    menu
  end

  def list_artists
    puts "List of Artists:"
    puts <<-DOC.gsub /^\s*/, ''
    1. Jay-Z
    2. Maroon 5
    DOC
  end

  def menu
    puts "Type in the name of the artist that you would like to know more about: "
  end

end
