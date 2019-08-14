require_relative "./legends.rb"
require_relative "./legend_scraper.rb"

class ApexLegends::CLI
  
  def call
    welcome
    list_legends
    menu
    goodbye 
  end
  
  def welcome
    puts "Welcome to Kings Canyon!"
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
    puts "\r\nAbove are all of the available Legends' stats - you may need to scroll up to see view them all.\r\n\r\nTo find out more about a Legend from the list above, simply enter their number.\r\n\r\nYou can also type 'exit' at any time to leave the program"
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
      
      if input.to_i > 0
        the_legend = (@legends[input.to_i-1]).split(" ")
        legend_value = the_legend[1]
        arg = legend_value.downcase
        bio = LegendScraper.legend_scraper(arg)
        puts "\r\n#{bio} -\r\n\r\nIf you'd like to select this Legend then type 'yes' to confirm. You can also type 'list legends' to see all of the options again."
      elsif input == "list legends"
        puts @legends
      elsif input == "yes"
        puts "\r\nThat's a great choice! You can now type 'exit' to leave the program"
      else 
        puts "\r\nI'm sorry, I didn't understand that. You can type 'list legends' if you need to see the list again."
      end 
    end 
  end 
  
  def goodbye
    puts "\r\nEnjoy your time in Kings Canyon..."
  end 
  
end