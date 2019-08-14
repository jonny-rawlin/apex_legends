require 'pry'
require 'nokogiri'
require 'open-uri'

class LegendScraper
  
  @@legends = {}

  def self.stat_scraper
    
    legend_stats = Nokogiri::HTML(open("https://dreamteam.gg/apex/legends/pathfinder"))
    
    names = legend_stats.css("p.dynamicSidebarItemTitle___-SjTz.labelL___qgsCI.condensed___28u8b")[5..-1]
    
    legend_stats.css("div.general___3NxDu").each_with_index do |stats, i|
      name = names[i].text
      @@legends[name.to_sym] = {
        :percentage_chosen => (((((((stats.text).tr("E", " ")).tr("H", " ")).tr("W", " ")).tr("D", " ")).tr("K", " ")).tr("L", " ")).split(" ")[5],
        :win_rate => (((((((stats.text).tr("E", " ")).tr("H", " ")).tr("W", " ")).tr("D", " ")).tr("K", " ")).tr("L", " ")).split(" ")[7],
        :damage_per_match => (((((((stats.text).tr("E", " ")).tr("H", " ")).tr("W", " ")).tr("D", " ")).tr("K", " ")).tr("L", " ")).split(" ")[12],
        :kills_per_match => (((((((stats.text).tr("E", " ")).tr("H", " ")).tr("W", " ")).tr("D", " ")).tr("K", " ")).tr("L", " ")).split(" ")[18],
        :headshots_per_kill => (((((((stats.text).tr("E", " ")).tr("H", " ")).tr("W", " ")).tr("D", " ")).tr("K", " ")).tr("L", " ")).split(" ")[25]
      }
    end
    
    @@legends
    
  end
  
  def self.legend_scraper(legend_name)
    
  bloodhound = "https://dreamteam.gg/apex/wiki/apex-legends-bloodhound-guide"
  gibraltar = "https://dreamteam.gg/apex/wiki/apex-legends-gibraltar-guide"
  lifeline = "https://dreamteam.gg/apex/wiki/apex-legends-lifeline-guide"
  pathfinder = "https://dreamteam.gg/apex/wiki/apex-legends-pathfinder"
  wraith = "https://dreamteam.gg/apex/wiki/apex-legends-wraith-guide"
  bangalore = "https://dreamteam.gg/apex/wiki/apex-legends-bangalore-guide"
  caustic = "https://dreamteam.gg/apex/wiki/apex-legends-caustic"
  mirage = "https://dreamteam.gg/apex/wiki/apex-legends-mirage-guide"
  octane = "https://dreamteam.gg/apex/wiki/apex-legends-octane-guide"
  wattson = "https://dreamteam.gg/apex/wiki/apex-legends-wattson-guide"
  
  legend_info = Nokogiri::HTML(open("#{legend_name}"))
  
  legend_bio = legend_info.css("div.text___1q3Pv").text
  
  puts legend_bio
    
  end 
  
  def self.all 
    @@legends
  end 
  binding.pry 
end