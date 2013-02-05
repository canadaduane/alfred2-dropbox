require 'rubygems'
require 'sinatra'

def exit!
  Process.kill "TERM", 0
end

get '/' do
  'Hello world!'
end

get '/exit' do
  exit!
end
