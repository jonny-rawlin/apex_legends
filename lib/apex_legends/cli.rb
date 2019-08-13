class ApexLegends::CLI
  
  def call 
    list_legends
    menu
    goodbye 
  end
  
  def list_legends
    puts "Available Legends:"
    @legends = Legends.all_legends
    puts @legends
  end 
  
  def menu
    puts "Select the Legend you'd like to know more about by entering their number. Type 'list legends' to see the list again or type 'exit' to exit"
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
      
      if input.to_i > 0
        the_legend = @legends[input.to_i-1]
        puts "#{the_legend.name} - #{the_legend.abilities} - #{the_legend.stats} - #{the_legend.bio}"
      elsif input == "list legends"
        list_legends 
      end 
    end 
  end 
  
  def goodbye
    puts "Enjoy your time in Kings Landing..."
  end 
  
end 