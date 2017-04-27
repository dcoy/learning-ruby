# Object Oriented Programming in Ruby
# Classes should have one responsibility

class APIConnector
  attr_accessor :title, :description, :url

  # When class is created, this method will run
  def initialize(title: title, description: description, url: url = "https://google.com")
    @title = title
    @description = description
    @url = url
  end

  def testing_initializers
    puts @title
    puts @description
    puts @url
  end
end


api = APIConnector.new(title: 'My title', description: 'A description', url: 'yahoo.com')
api.testing_initializers
