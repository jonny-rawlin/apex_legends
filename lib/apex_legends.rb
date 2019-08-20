require_relative '../lib/apex_legends/version'
require_relative '../lib/apex_legends/cli'
require_relative '../lib/apex_legends/legend_scraper'
require_relative '../lib/apex_legends/legend'

require 'pry'
require 'nokogiri'
require 'open-uri'

module ApexLegends
  class Error < StandardError; end
  # Your code goes here...
end
