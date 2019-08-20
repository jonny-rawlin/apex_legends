class Legend
  
attr_accessor :name, :percentage_chosen, :win_rate, :damage_per_match, :kills_per_match, :headshots_per_kill, :bio, :scraped
  @@all_legends = nil
  @@legends_list = []
  
  def self.list_legends
    legend_array = []
    legends = LegendScraper.stat_scraper
    legends.each.with_index(1) do |legend, i|
      legend_array << "#{i}. #{legend[0]}" 
    end
    legend_array
  end

  def self.all
    @@all_legends || LegendScraper.stat_scraper
  end 
end