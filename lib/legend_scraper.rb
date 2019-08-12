require 'open-uri'
require 'selenium-webdriver'
require 'pry'

require 'selenium-webdriver'

options = Selenium::WebDriver::Chrome::Options.new(args: ['headless'])

driver = Selenium::WebDriver.for(:chrome, options: options)

driver.get('http://stackoverflow.com/')

puts driver.title

driver.quit

# def stat_scraper
#   legend_stats = Nokogiri::HTML(open("https://dreamteam.gg/apex/legends/pathfinder"))
  
#   legends = {}
 
#   legend_stats.css("div.box___jUrgl.stats___8TQpl").each do |legend|
#     name = legend.css("span div.box___jUrgl.item___29sDA.legend___28WrD").text
#     legends[name.to_sym] = {
#     #   :percentage_chosen => legend.css("").text.gsub("%","").to_i,
#     #   :win_rate => legend.css("").text.gsub("%","").to_i,
#     #   :damage_per_match => legend.css("").text.gsub("%","").to_i,
#     #   :kills_per_match => legend.css("").text.gsub("%","").to_i,
#     #   :headshots_per_kill => legend.css("").text.gsub("%","").to_i
#     }
#     binding.pry
#   end
  
#   legends
# end

# stat_scraper 