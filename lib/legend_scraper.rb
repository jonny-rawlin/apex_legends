require 'open-uri'
require 'nokogiri'
require 'pry'

def stat_scraper
  legend_stats = Nokogiri::HTML(open("https://dreamteam.gg/apex/legends/pathfinder"))
  
  legends = {}
  names = legend_stats.css("p.dynamicSidebarItemTitle___-SjTz.labelL___qgsCI.condensed___28u8b")[5..-1]
  
  legend_stats.css("div.general___3NxDu").each_with_index do |stats, i|
    name = names[i].text
    legends[name.to_sym] = {
       :percentage_chosen => ((((((((((stats.text).insert(16, " ")).insert(22, " ")).insert(30, " ")).insert(36, " ")).insert(53, " ")).insert(60, " ")).insert(76, " ")).insert(81, " ")).insert(100, " ")).split(" ")[3],
       :win_rate => ((((((((((stats.text).insert(16, " ")).insert(22, " ")).insert(30, " ")).insert(36, " ")).insert(53, " ")).insert(60, " ")).insert(76, " ")).insert(81, " ")).insert(100, " ")).split(" ")[5],
       :damage_per_match => ((((((((((stats.text).insert(16, " ")).insert(22, " ")).insert(30, " ")).insert(36, " ")).insert(53, " ")).insert(60, " ")).insert(76, " ")).insert(81, " ")).insert(100, " ")).split(" ")[9],
       :kills_per_match => ((((((((((stats.text).insert(16, " ")).insert(22, " ")).insert(30, " ")).insert(36, " ")).insert(53, " ")).insert(60, " ")).insert(76, " ")).insert(81, " ")).insert(100, " ")).split(" ")[13],
       :headshots_per_kill => ((((((((((stats.text).insert(16, " ")).insert(22, " ")).insert(30, " ")).insert(36, " ")).insert(53, " ")).insert(60, " ")).insert(76, " ")).insert(81, " ")).insert(100, " ")).split(" ")[17]
    }
    binding.pry
  end
  
  legends
end

# div.box___jUrgl.general___3_ihh.justify_center___25GU_.align_end___3tvCR

stat_scraper