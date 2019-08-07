class ApexLegends::CLI
  
  def call 
    list_legends
    menu
    goodbye 
  end
  
  def list_legends
    puts "Available Legends:"
    puts <<-DOC.gsub /^\s*/, ''
      1. Wraith 
      2. Bangalor
      3. Lifeline 
      4. Pathfinder 
    DOC
  end 
  
  def menu
    puts "Select the Legend you'd like to know more about by entering their number. Type 'list legends' to see the list again or type 'exit' to exit"
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
      case input 
      when "1"
        puts "More info on Legend 1..."
      when "2"
        puts "More info on Legend 2..."
      when "3"
        puts "More info on Legend 3..."
      when "list legends"
        list_legends
      else 
        puts "I'm not sure what you're asking for. Type 'list legends' to see the available options again."
      end 
    end 
  end 
  
  def goodbye
    puts "Enjoy your time in Kings Landing..."
  end 
  
end 