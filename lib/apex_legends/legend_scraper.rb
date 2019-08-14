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
    
    url = ""
    
    if legend_name == "bloodhound"
      url = "https://dreamteam.gg/apex/wiki/apex-legends-bloodhound-guide"
    elsif legend_name == "gibraltar"
      url = "https://dreamteam.gg/apex/wiki/apex-legends-gibraltar-guide"
    elsif legend_name == "lifeline"
      url = "https://dreamteam.gg/apex/wiki/apex-legends-lifeline-guide"
    elsif legend_name == "pathfinder"
      url = "https://dreamteam.gg/apex/wiki/apex-legends-pathfinder"
    elsif legend_name == "wraith"
      url = "https://dreamteam.gg/apex/wiki/apex-legends-wraith-guide"
    elsif legend_name == "bangalore"
      url = "https://dreamteam.gg/apex/wiki/apex-legends-bangalore-guide"
    elsif legend_name == "caustic"
      url = "https://dreamteam.gg/apex/wiki/apex-legends-caustic"
    elsif legend_name == "mirage"
      url = "https://dreamteam.gg/apex/wiki/apex-legends-mirage-guide"
    elsif legend_name == "octane"
      url = "https://dreamteam.gg/apex/wiki/apex-legends-octane-guide"
    elsif legend_name == "wattson"
      url = "https://dreamteam.gg/apex/wiki/apex-legends-wattson-guide"
    end 
    
    legend_info = Nokogiri::HTML(open(url))
    
    legend_bio = legend_info.css("div.text___1q3Pv").text
    
    puts "\r\n"
    puts legend_bio
    
  end 
  
  def self.all 
    @@legends
  end 
end