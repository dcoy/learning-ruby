require 'sinatra'

class HiSinatra < Sinatra::Base
  get '/' do
    "Hey Sintra!"
  end

  get '/:age' do
    "Hi, I'm #{params[:age]} years old."
  end
end
