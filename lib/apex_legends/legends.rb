require 'pry'
require_relative "./legend_scraper.rb"

class Legends
  
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
    stat_list
  end
  
  def self.stats(the_legend)
    legend_stats = LegendScraper.all
    legend_stats.each.with_index do |legend, i|
    puts "#{[the_legend][1]}"
    end
  end
end 