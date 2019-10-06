require 'json'
require 'sinatra'
require 'sinatra/activerecord'

# Load Models
Dir["./app/models/*.rb"].each {|file| require file }
  
class App < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  
  get '/' do
    'Hello world!'
  end
end
