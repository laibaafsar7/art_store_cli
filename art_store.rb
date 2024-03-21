require_relative 'artwork'

class ArtStoreApp
  def initialize
    @collection = []
  end

  def run
    loop do
      print_menu
      choice = gets.chomp.to_i
      case choice
      when 1
        add_artwork
      when 2
        display_collection
      when 3
        puts "Exiting..."
        break
      else
        puts "Invalid choice. Please try again."
      end
      rescue Interrupt
        # puts "\nInterrupt signal received. Exiting..."
      break
    end
  end

  private

  def print_menu
    puts "\nMenu:"
    puts "1. Add Artwork"
    puts "2. Display Collection"
    puts "3. Exit"
    print "Enter your choice: "
  end

  def add_artwork
    print "Enter artwork title: "
    title = gets.chomp
    print "Enter artist name: "
    artist = gets.chomp
    print "Enter year of creation: "
    year = gets.chomp.to_i
    artwork = Artwork.new(title, artist, year)
    @collection << artwork
    puts "Artwork added successfully."
  end

  def display_collection
    puts "Artwork Collection:"
    @collection.each_with_index do |artwork, index|
      puts "#{index + 1}. #{artwork.title} by #{artwork.artist}, #{artwork.year}"
    end
  end
end
