require 'open-uri'
require 'nokogiri'

# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image link: project.css("div.project-thumbnail a img").attribute("src").value
# description: project.css("p.bbcard_blurb").text
# location: project.css("ul.project-meta li span.location-name").text
# percentage_funded: project.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i

def stat_scraper
  html = File.read('https://dreamteam.gg/apex/legends/pathfinder')
  legend_stats = Nokogiri::HTML(html)
  
  legends = {}
 
  legend_stats.css("li.project.grid_4").each do |legend|
    name = legend.css("h2.bbcard_name strong a").text
    legends[name.to_sym] = {
      :image_link => project.css("div.project-thumbnail a img").attribute("src").value,
      :description => project.css("p.bbcard_blurb").text,
      :location => project.css("ul.project-meta span.location-name").text,
      :percent_funded => project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
    }
  end
  
  legends
end

stat_scraper 