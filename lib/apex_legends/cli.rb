require_relative "./legends.rb"

class ApexLegends::CLI < Legends
  
  def call
    welcome
    list_legends
    menu
    goodbye 
  end
  
  def welcome
    puts "Welcome to King's Landing!"
  end 
  
  def list_legends
    puts "\r\nThese are your available Legends:"
    @stat_list = Legends.stat_lister
    @legends = Legends.all_legends
    @stat_list.each do | legend, stat_title|
     puts "\r\n#{legend}:"
      stat_title.each do |stat_title, value|
       puts "  #{stat_title.to_s.split("_").map {|stat| stat.capitalize}.join(" ")}: #{value}"
      end
    end
    puts "\r\n"
    puts @legends
  end 
  
  def menu
    puts "\r\nTo find out more about a Legend from the list above, simply enter their number. You can type 'exit' at any time to exit the program"
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
      
      if input.to_i > 0
        the_legend = (@legends[input.to_i-1]).split(" ")
        puts "\r\n#{the_legend[1]} -\r\n\r\nIf you'd like to select this Legend then type their name below. You can also type 'list legends' to see all of the options again."
      elsif input == "list legends"
        puts @legends
      end 
    end 
  end 
  
  def goodbye
    puts "\r\nEnjoy your time in Kings Landing..."
  end 
  
end