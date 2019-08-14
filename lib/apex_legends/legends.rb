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
end 