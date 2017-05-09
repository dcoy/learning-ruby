require 'rubygems'
require 'httparty'

class RestyResponse
  include HTTParty
  base_uri "immense-brushlands-39028.herokuapp.com"

  def quotes
    self.class.get('/random/quote')
  end
end

gucci_party = RestyResponse.new

gucci_party.quotes.each do |post|
  puts "Author: #{post}"
end
