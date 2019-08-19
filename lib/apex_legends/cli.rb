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
    puts "\r\nAvailable Legends:"
    Legend.all.each do | legend |
     puts "\r\n#{legend.name}:"
    #puts "Kills: #{legend.kills}"
    #puts "  #{stat_title.to_s.split("_").map {|stat| stat.capitalize}.join(" ")}: #{value}"

    end
    puts "\r\n"
  end 
  
  def menu
    puts "\r\nAbove are all of the available Legends' stats - you may need to scroll up to view them all.\r\n\r\nTo find out more about a Legend from the list above, simply enter their number.\r\n\r\nYou can also type 'exit' at any time to leave the program"
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
      
      if input.to_i > 0
        the_legend = Legend.all[input.to_i-1]
        LegendScraper.legend_scraper(the_legend)
        puts "\r\n#{the_legend.bio} -\r\n\r\nIf you'd like to select this Legend then type 'yes' to confirm. You can also type 'list legends' to see all of the options again."
      elsif input == "list legends"
        puts @legends
      elsif input == "yes"
        puts "\r\nThat's a great choice! You can now type 'exit' to leave the program"
      elsif input != "exit"
        puts "\r\nI'm sorry, I didn't understand that. You can type 'list legends' if you need to see the list again."
      end 
    end 
  end 
  
  def goodbye
    puts "\r\nEnjoy your time in Kings Canyon..."
  end 
  
end