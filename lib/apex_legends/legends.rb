require 'pry'
require_relative "./legend_scraper.rb"

class Legends < LegendScraper
  
  # attr_accessor :name, :stats, :abilities, :bio 
  
  def self.all_legends
    legend_array = []
    legends = LegendScraper.stat_scraper
    legends.each.with_index(1) do |legend, i|
      legend_array << "#{i}. #{legend[0]}" 
    end
    legend_array
  end
    
  def self.stat_lister
    stat_list = LegendScraper.all
    # stat_list.each do | legend, stat_title|
    # puts "#{legend}:"
    #   stat_title.each do |stat_title, value|
    #   puts "  #{stat_title.to_s.split("_").map {|stat| stat.capitalize}.join(" ")}: #{value}"
    #   end
    # end
    stat_list
  end
  
  def self.stats(the_legend)
    legend_stats = LegendScraper.all
    legend_stats.each.with_index do |legend, i|
    puts "#{[the_legend][1]}"
    end
  end
  
  # def self.abilities
  #   ability_1 = 
  #   ability_2 = 
  #   ability_3 =
  # end 
  
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
  binding.pry
end 