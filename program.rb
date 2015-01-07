require File.dirname(__FILE__) + '/lib/lucarative_ad.rb'
require "rubygems"
require "yaml"

puts "Best banner is \n #{LucarativeAd::BestAd.new("file_inputs.yml").best}"



