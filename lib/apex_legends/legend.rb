class Legend
  
attr_accessor :name, :percentage_chosen, :win_rate, :damage_per_match, :kills_per_match, :headshots_per_kill, :bio, :scraped
  @@all_legends = nil
  
  def self.all
    @@all_legends || LegendScraper.stat_scraper
  end 
end