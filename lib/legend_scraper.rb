require 'open-uri'
require 'nokogiri'
require 'pry'

def stat_scraper
  legend_stats = Nokogiri::HTML(open("https://dreamteam.gg/apex/legends/pathfinder"))
  
  legends = {}
 
  legend_stats.css("div.content___TWkBZ").each do |legend|
    name = legend.css("div").text
    legends[name.to_sym] = {
    #   :percentage_chosen => legend.css("").text.gsub("%","").to_i,
    #   :win_rate => legend.css("").text.gsub("%","").to_i,
    #   :damage_per_match => legend.css("").text.gsub("%","").to_i,
    #   :kills_per_match => legend.css("").text.gsub("%","").to_i,
    #   :headshots_per_kill => legend.css("").text.gsub("%","").to_i
    }
    binding.pry
  end
  
  legends
end

stat_scraper 