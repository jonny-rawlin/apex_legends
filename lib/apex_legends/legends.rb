require 'pry'
require_relative './legend_scraper.rb'

class Legends
  include LegendScraper
  
  attr_accessor :name, :stats, :abilities, :bio 
  
  def self.all_legends
    # legend_1 = self.new 
    # legend_1.name = "Wraith"
    # legend_1.stats = "Random stats"
    # legend_1.abilities = "Three abilities"
    # legend_1.bio = "Interesting facts"
    
    # legend_2 = self.new 
    # legend_2.name = "Bangalor"
    # legend_2.stats = "Random stats"
    # legend_2.abilities = "Three abilities"
    # legend_2.bio = "Interesting facts"
    
    # legend_3 = self.new 
    # legend_3.name = "Pathfinder"
    # legend_3.stats = "Random stats"
    # legend_3.abilities = "Three abilities"
    # legend_3.bio = "Interesting facts"
    
    # legend_4 = self.new 
    # legend_4.name = "Bloodhound"
    # legend_4.stats = "Random stats"
    # legend_4.abilities = "Three abilities"
    # legend_4.bio = "Interesting facts"
    
    # [legend_1, legend_2, legend_3, legend_4]
  end 
  binding.pry 
end 