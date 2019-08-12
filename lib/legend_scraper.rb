require 'open-uri'
require 'nokogiri'
require 'pry'

def stat_scraper
  legend_stats = Nokogiri::HTML(open("https://dreamteam.gg/apex/legends/pathfinder"))
  
  legends = {}
  names = legend_stats.css("p.dynamicSidebarItemTitle___-SjTz.labelL___qgsCI.condensed___28u8b")[5..-1]
  
  legend_stats.css("div.general___3NxDu").each_with_index do |legend, i|
    #name = legend.css("p[breed='title']").text
    name = names[i].text
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