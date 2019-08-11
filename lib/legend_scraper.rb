require 'open-uri'
require 'nokogiri'
require 'pry'
require 'rake'

class initial_scrape
  
  def scrape_data
  doc1 = Nokogiri::HTML(open("https://dreamteam.gg/apex/legends/pathfinder"))
  end 
  
end 