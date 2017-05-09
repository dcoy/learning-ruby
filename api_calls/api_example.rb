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
response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

puts gucci_party.quotes, "\n"

puts "<=============== Pulling in the Stack Exchange API ===============>\n"

puts response.code
puts response.message
puts response.headers.inspect
