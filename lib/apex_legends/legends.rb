class ApexLegends::Legends
  
  attr_accessor :name, :stats, :abilities, :bio 
  
  def self.all_legends
    puts <<-DOC.gsub /^\s*/, ''
      1. Wraith 
      2. Bangalor
      3. Lifeline 
      4. Pathfinder 
    DOC
    
    legend_1 = self.new 
    legend_1.name = "Wraith"
    legend_1.stats = "Random stats"
    legend_1.abilities = "Three abilities"
    legend_1.bio = "Interesting facts"
    
    legend_2 = self.new 
    legend_2.name = "Bangalor"
    legend_2.stats = "Random stats"
    legend_2.abilities = "Three abilities"
    legend_2.bio = "Interesting facts"
    
    [legend_1, legend_2]
  end 
  
end 