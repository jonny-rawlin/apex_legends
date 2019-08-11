require 'open-uri'
require 'nokogiri'
require 'pry'

# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image link: project.css("div.project-thumbnail a img").attribute("src").value
# description: project.css("p.bbcard_blurb").text
# location: project.css("ul.project-meta li span.location-name").text
# percentage_funded: project.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i

def stat_scraper
  legend_stats = Nokogiri::HTML(open("https://dreamteam.gg/apex/legends/pathfinder"))
  
  # legends = {}
 
  legend_stats.css("div.box___jUrgl.stats___8TQpl").each do |legend|
    binding.pry
    name = legend.css("h2.bbcard_name strong a").text
    legends[name.to_sym] = {
      :percentage_chosen => legend.css("").text.gsub("%","").to_i,
      :win_rate => legend.css("").text.gsub("%","").to_i,
      :damage_per_match => legend.css("").text.gsub("%","").to_i,
      :kills_per_match => legend.css("").text.gsub("%","").to_i,
      :headshots_per_kill => legend.css("").text.gsub("%","").to_i
    }
  end
  
  legends
end

stat_scraper 